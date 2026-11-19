README
19-Nov-2026

Crash - black screen

I found a likely crash-level difference to verify: the linker places SDCC RAM at 0xC000, while the translated game itself expects 0xC000–0xC61F; that means compiler globals and stack can overwrite the game’s state. I’ll confirm the reserved ranges and then test a relink with data moved to 0xC620, matching the working 32 KB build.