Export chat
14-Nov-2026

Here is the workflow going forward:
Your repeatable workflow
1. Start a new conversation in VS Code using GitHub Copilot Chat.
2. When finished, run Chat: Export Chat from the VS Code Command Palette.
3. Save the exported file as chat.json.
4. Open a terminal in the folder containing chat.json and copilot_chat_to_html.py.
5. Run:
6. python3 copilot_chat_to_html.py chat.json

copilot-chat-export/
│
├── copilot_chat_to_html.py
├── chat.json
├── chat.html
│
└── chat_assets/
    ├── image-001.png
    ├── image-002.png
    └── image-003.png