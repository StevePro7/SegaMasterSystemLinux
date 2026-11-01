
# Wonder Boy — ROM Overview

## 1. Project Information

| Property | Value |
|---|---|
| Game | Wonder Boy |
| Platform | Sega Master System |
| CPU | Zilog Z80 |
| ROM filename | Wonderboy.sms |
| ROM size | 128 KB |
| ROM size in bytes | 131,072 |
| Physical ROM banks | 8 |
| Physical bank size | 16 KB |
| Development target | devkitSMS |
| C compiler | SDCC |
| SMS library | SMSlib |
| Reverse engineering | REA + Z80 disassembly |
| Host OS | Ubuntu 20.04 |

## 2. Project Objectives

The objective is to reverse engineer the original Wonder Boy Sega Master System ROM and progressively reconstruct its functionality using readable C source code.

The reconstruction should:

- Identify all executable Z80 code.
- Identify graphics, sound and other embedded data.
- Understand the cartridge banking mechanism.
- Identify the main game loop.
- Identify player movement and physics.
- Identify enemy behaviour.
- Understand collision detection.
- Identify graphics and sprite management.
- Identify sound and music routines.
- Reconstruct game functionality using devkitSMS.

The original ROM must remain unchanged.

## 3. ROM Integrity

Record the original ROM's identifying information.

| Property | Value |
|---|---|
| Filename | Wonderboy.sms |
| File size | 131072 bytes (reported) |
| SHA-256 | TBD |
| Header present | TBD |
| Cartridge mapper | TBD |
| Region | TBD |
| ROM checksum | TBD |

Useful commands:

```bash
stat -c '%n %s bytes' original/Wonderboy.sms
sha256sum original/Wonderboy.sms
file original/Wonderboy.sms
xxd -g 1 -l 64 original/Wonderboy.sms
```

## 4. Physical ROM Bank Layout

The reported 128 KB ROM can be divided into eight 16 KB physical banks, assuming the image has no additional header.

| Bank | Start Offset | End Offset | Size |
|---|---|---|---|
| Bank 0 | 0x00000 | 0x03FFF | 16 KB |
| Bank 1 | 0x04000 | 0x07FFF | 16 KB |
| Bank 2 | 0x08000 | 0x0BFFF | 16 KB |
| Bank 3 | 0x0C000 | 0x0FFFF | 16 KB |
| Bank 4 | 0x10000 | 0x13FFF | 16 KB |
| Bank 5 | 0x14000 | 0x17FFF | 16 KB |
| Bank 6 | 0x18000 | 0x1BFFF | 16 KB |
| Bank 7 | 0x1C000 | 0x1FFFF | 16 KB |

IMPORTANT:

Physical ROM offsets are not necessarily the same as Z80 runtime addresses.

The cartridge mapper determines which physical bank is visible in each CPU memory window.

## 5. Disassembly Files

Expected files:

```text
disassembly/
    bank0.bin
    bank0.asm
    bank1.bin
    bank1.asm
    bank2.bin
    bank2.asm
    bank3.bin
    bank3.asm
    bank4.bin
    bank4.asm
    bank5.bin
    bank5.asm
    bank6.bin
    bank6.asm
    bank7.bin
    bank7.asm
```

The disassembly must distinguish:

- Executable Z80 instructions.
- Graphics and tile data.
- Sprite data.
- Sound and music data.
- Lookup tables.
- Level data.
- Other embedded resources.

Do not assume every byte is executable code.

## 6. Toolchain

| Tool | Purpose |
|---|---|
| REA | AI-assisted reverse engineering |
| VS Code | Development environment |
| GitHub Copilot | Code investigation and reconstruction assistance |
| z80dasm | Z80 disassembly |
| devkitSMS | Sega Master System development |
| SDCC | C compiler |
| SMSlib | SMS hardware library |
| Emulator / debugger | Runtime verification |

Record actual tool versions as they become available.

## 7. Findings

| ID | Finding | Evidence | Confidence |
|---|---|---|---|
| ROM-001 | ROM reported as 128 KB | User-provided information | Medium |
| ROM-002 | Expected eight physical 16 KB banks | File-size calculation | Medium |
| ROM-003 | CPU is Z80 | Sega Master System hardware | High |

## 8. Outstanding Questions

- Which cartridge mapper is used?
- Does the ROM contain a header?
- Which physical bank contains the startup code?
- Which banks contain executable code?
- Which banks contain graphics and sound?
- How is level data organised?
- How are graphics decompressed or transferred?
- Which routines handle player movement?
- How does the game manage scrolling?

## 9. Reverse Engineering Progress

| Phase | Description | Status |
|---|---|---|
| 1 | ROM identification | Started |
| 2 | Physical bank extraction | Complete |
| 3 | Initial Z80 disassembly | Complete |
| 4 | Memory mapping | Pending |
| 5 | Startup investigation | Pending |
| 6 | Game engine investigation | Pending |
| 7 | Function identification | Pending |
| 8 | C reconstruction | Not started |
| 9 | devkitSMS compilation | Not started |
| 10 | Gameplay verification | Not started |
