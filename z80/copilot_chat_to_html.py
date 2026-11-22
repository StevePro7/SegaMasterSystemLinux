
#!/usr/bin/env python3
import json
import html
import re
import sys
import base64
import binascii
from pathlib import Path
from datetime import datetime

# PNG extraction state
png_counter = 0
assets_dir = None
png_cache = {}


def esc(s):
    return html.escape(str(s or ""))


def extract_png(text):
    """
    Find raw base64 PNG data anywhere in a text field.
    Save it as a PNG and replace the data with an image.
    """

    global png_counter

    if not isinstance(text, str):
        return str(text or "")

    # PNG base64 signature, followed by base64 characters.
    # Also supports base64 split across multiple lines.
    pattern = (
        r"(?m)(iVBORw0KGgo[A-Za-z0-9+/=]*"
        r"(?:[ \t]*\r?\n[ \t]*[A-Za-z0-9+/=]+)*)"
    )

    def replace(match):
        global png_counter

        compact = re.sub(r"\s+", "", match.group(1))

        if compact in png_cache:
            return png_cache[compact]

        try:
            image_bytes = base64.b64decode(
                compact,
                validate=True
            )

            if not image_bytes.startswith(
                b"\x89PNG\r\n\x1a\n"
            ):
                return match.group(1)

            png_counter += 1
            filename = f"image-{png_counter:03d}.png"

            image_path = assets_dir / filename
            image_path.write_bytes(image_bytes)

            relative_path = (
                f"{assets_dir.name}/{filename}"
            )

            image_html = (
                '<figure class="chat-image">'
                f'<img src="{relative_path}" '
                f'alt="{filename}">'
                f'<figcaption>{filename}</figcaption>'
                '</figure>'
            )

            png_cache[compact] = image_html

            print(f"PNG extracted: {image_path}")

            return image_html

        except (binascii.Error, ValueError) as error:
            print(f"PNG decoding error: {error}")
            return match.group(1)

    return re.sub(pattern, replace, text)


def render_escaped_with_images(text):
    """
    Escape ordinary text but preserve extracted image HTML.
    Used for terminal and tool output.
    """

    text = extract_png(str(text or ""))

    parts = re.split(
        r'(<figure class="chat-image">.*?</figure>)',
        text,
        flags=re.S
    )

    result = []

    for part in parts:
        if part.startswith('<figure class="chat-image">'):
            result.append(part)
        else:
            result.append(esc(part))

    return "".join(result)


def diagnose_json(value, path="$"):
    """
    Recursively inspect the complete exported JSON.
    Print the exact location of image markers and PNG data.
    Also extract PNGs found in any string field.
    """

    if isinstance(value, dict):
        for key, child in value.items():
            diagnose_json(child, f"{path}.{key}")

    elif isinstance(value, list):
        for index, child in enumerate(value):
            diagnose_json(child, f"{path}[{index}]")

    elif isinstance(value, str):

        has_path = "Viewed image file at path" in value
        has_png = "iVBORw0KGgo" in value

        if has_path:
            print(f"IMAGE PATH MARKER FOUND: {path}")

        if has_png:
            print(
                f"PNG BASE64 FOUND: {path} "
                f"(string length: {len(value):,})"
            )

            # Extract it immediately, even if it is nested
            # somewhere the original renderer doesn't display.
            extract_png(value)


def syntax(code, lang="text"):
    try:
        from pygments import highlight
        from pygments.lexers import get_lexer_by_name
        from pygments.formatters import HtmlFormatter

        lexer = get_lexer_by_name(lang or "text")

        return highlight(
            code,
            lexer,
            HtmlFormatter(nowrap=True)
        )

    except Exception:
        return esc(code)


def markdown(text):
    if not text:
        return ""

    text = str(text)

    # Extract PNGs before normal Markdown processing
    text = extract_png(text)

    pattern = r"```(\w*)\n(.*?)```"

    def codeblock(m):
        lang = m.group(1) or "text"
        code = m.group(2)

        return (
            '<pre class="code"><code>'
            + syntax(code, lang)
            + '</code></pre>'
        )

    text = re.sub(
        pattern,
        codeblock,
        text,
        flags=re.S
    )

    # Inline formatting
    text = re.sub(
        r"`([^`]+)`",
        lambda m: '<code>' + esc(m.group(1)) + '</code>',
        text
    )

    text = re.sub(
        r"\*\*(.*?)\*\*",
        r"<strong>\1</strong>",
        text
    )

    return text.replace("\n", "<br>\n")


def terminal(data):
    command = data.get("commandLine", {}).get("original", "")
    language = data.get("language", "bash")

    output = data.get(
        "terminalCommandOutput", {}
    ).get("text", "")

    state = data.get("terminalCommandState", {})
    exit_code = state.get("exitCode")

    status = (
        "Exit code: " + str(exit_code)
        if exit_code is not None
        else "Execution result"
    )

    output_html = render_escaped_with_images(output)

    return f"""
    <section class="terminal">
      <div class="terminal-title">
        Terminal command
        <span>{esc(status)}</span>
      </div>
      <pre>{syntax(command, language)}</pre>
      <div class="output-title">Terminal output</div>
      <div class="output output-content">{output_html}</div>
    </section>
    """


def tool(item):
    data = item.get("toolSpecificData") or {}
    kind = data.get("kind", "")

    if kind == "terminal":
        return terminal(data)

    details = item.get("resultDetails") or {}
    result = ""

    for output in details.get("output", []):
        value = output.get("value", "")

        if value:
            result += (
                '<div class="output output-content">'
                + render_escaped_with_images(value)
                + '</div>'
            )

    def get_message(value):
        if isinstance(value, dict):
            return value.get("value", "")

        if isinstance(value, str):
            return value

        return ""

    title = (
        get_message(item.get("pastTenseMessage"))
        or get_message(item.get("invocationMessage"))
        or item.get("toolId", "Tool")
    )

    return f"""
    <section class="tool">
      <strong>{esc(title)}</strong>
      {result}
    </section>
    """


def response_item(item):
    kind = item.get("kind", "")

    if kind == "thinking":
        return ""

    if kind == "toolInvocationSerialized":
        return tool(item)

    if kind in (
        "autoModeResolution",
        "systemNotification"
    ):
        return ""

    if "value" in item:
        return markdown(item["value"])

    return ""


def main():
    global assets_dir

    if len(sys.argv) < 2:
        print(
            "Usage: python3 copilot_chat_to_html.py chat.json"
        )
        sys.exit(1)

    source = Path(sys.argv[1])

    output = source.with_suffix(".html")

    # Assets folder beside the HTML file
    assets_dir = output.parent / "chat_assets"
    assets_dir.mkdir(parents=True, exist_ok=True)

    with source.open(encoding="utf-8") as f:
        data = json.load(f)

    print("\n--- JSON IMAGE DIAGNOSTICS ---")

    # Search every field in the JSON, not just Markdown
    diagnose_json(data)

    print("\n--- END DIAGNOSTICS ---\n")

    requests = data["requests"]
    exchanges = []

    for i, req in enumerate(requests):

        message = req.get("message", {})
        prompt = message.get("text", "")

        response = "".join(
            response_item(item)
            for item in req.get("response", [])
        )

        date = req.get("timestamp", 0)

        try:
            date = datetime.fromtimestamp(
                date / 1000
            ).strftime("%d %b %Y %H:%M")

        except Exception:
            date = ""

        exchanges.append(f"""
        <article>
          <div class="date">Conversation {i+1} · {date}</div>

          <section class="user">
            <h3>You</h3>
            {markdown(prompt)}
          </section>

          <section class="assistant">
            <h3>GitHub Copilot</h3>
            {response}
          </section>
        </article>
        """)

    page = f"""<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Copilot Chat Archive</title>

<style>
{__import__('pygments.formatters',
    fromlist=['HtmlFormatter'])
    .HtmlFormatter(style='monokai')
    .get_style_defs('.code')
    if __import__('importlib.util').util.find_spec('pygments')
    else ''}

body {{
  background:#f2f3f5;
  color:#222;
  font:15px/1.6 Arial,sans-serif;
  max-width:1100px;
  margin:30px auto;
  padding:20px;
}}
article {{ margin-bottom:45px; }}
.user,.assistant,.tool {{
  padding:20px;
  margin:12px 0;
  border-radius:10px;
  background:white;
  border:1px solid #ddd;
}}
.user {{ border-left:5px solid #4285d4; }}
.assistant {{ border-left:5px solid #24966d; }}
h3 {{ color:#777; font-size:13px; }}
.date {{ color:#888; font-size:12px; }}
pre {{
  white-space:pre-wrap;
  overflow-wrap:anywhere;
  padding:16px;
  border-radius:7px;
  background:#20242c;
  color:#eee;
  overflow-x:auto;
  font:13px monospace;
}}
.terminal {{
  background:#171b24;
  color:#eee;
  padding:16px;
  border-radius:9px;
  margin:16px 0;
}}
.terminal pre {{ background:#0d1117; }}
.terminal-title {{ font-weight:bold; }}
.terminal-title span {{ float:right; color:#9bbaaa; }}
.output-title {{ color:#aaa; font-size:12px; }}
.output {{ background:#101820; }}
.output-content {{
  color:#eee;
  padding:12px;
  border-radius:7px;
  white-space:pre-wrap;
  overflow-wrap:anywhere;
  font:13px monospace;
}}
code {{
  background:#e8e8e8;
  color:#333;
  padding:2px 5px;
  border-radius:3px;
}}

/* PNG display */
.chat-image {{
  margin:16px 0;
  padding:10px;
  background:white;
  border:1px solid #ddd;
  border-radius:8px;
}}

.chat-image img {{
  display:block;
  max-width:100%;
  height:auto;
  border-radius:5px;
}}

.chat-image figcaption {{
  color:#888;
  font-size:12px;
  margin-top:6px;
}}
</style>
</head>

<body>
<h1>GitHub Copilot Chat Archive</h1>
<p>{len(requests)} conversation turns</p>

{''.join(exchanges)}

</body>
</html>"""

    output.write_text(page, encoding="utf-8")

    print(f"\nCreated HTML: {output}")
    print(f"PNG assets folder: {assets_dir}")
    print(f"PNG files extracted: {png_counter}")


if __name__ == "__main__":
    main()
