
# Wonder Boy — Z80 Memory Map

## 1. Purpose

Document the Sega Master System Z80 memory layout and identify how Wonder Boy uses ROM, RAM, VDP and hardware resources.

All addresses must be verified against the actual ROM and mapper configuration.

## 2. Z80 Address Space

The Z80 has a 16-bit address bus and can address 64 KB of memory.

A conventional Sega Master System cartridge memory layout is:

| Z80 Address | Typical Usage |
|---|---|
| 0x0000–0x03FF | Often fixed cartridge ROM area |
| 0x0400–0x3FFF | Cartridge ROM window 0 |
| 0x4000–0x7FFF | Cartridge ROM window 1 |
| 0x8000–0xBFFF | Cartridge ROM window 2 or mapper-controlled RAM |
| 0xC000–0xDFFF | System/work RAM |
| 0xE000–0xFFFF | RAM mirrors and mapper registers |

IMPORTANT:

This is a generic reference layout, not a confirmed Wonder Boy memory map.

The exact mapping depends on cartridge hardware and mapper configuration.

## 3. ROM Banking

The reported ROM size is 128 KB.

Physical ROM layout:

- 8 physical banks.
- 16 KB per bank.
- 131,072 bytes total.

The CPU cannot directly address the entire ROM simultaneously.

Cartridge banking allows different physical banks to appear in the Z80 address space.

For the common Sega mapper, investigate these addresses:

| Address | Typical Function |
|---|---|
| 0xFFFC | Mapper control |
| 0xFFFD | ROM bank register for slot 0 |
| 0xFFFE | ROM bank register for slot 1 |
| 0xFFFF | ROM bank register for slot 2 |

Do not assume Wonder Boy uses this mapper until confirmed.

## 4. Bank Mapping Investigation

| Physical Bank | Z80 Address Window | Mapper Value | Purpose |
|---|---|---|---|
| Bank 0 | TBD | TBD | TBD |
| Bank 1 | TBD | TBD | TBD |
| Bank 2 | TBD | TBD | TBD |
| Bank 3 | TBD | TBD | TBD |
| Bank 4 | TBD | TBD | TBD |
| Bank 5 | TBD | TBD | TBD |
| Bank 6 | TBD | TBD | TBD |
| Bank 7 | TBD | TBD | TBD |

## 5. RAM Investigation

Identify RAM locations used for:

- Player coordinates.
- Player velocity.
- Player animation.
- Enemy positions.
- Enemy state.
- Collision information.
- Level information.
- Scrolling positions.
- Score.
- Lives.
- Timers.
- Game state.

| RAM Address | Purpose | Read/Write Evidence | Confidence |
|---|---|---|---|
| TBD | TBD | TBD | TBD |

## 6. VDP Hardware

The Sega Master System uses a Video Display Processor.

Common VDP ports:

| Port | Function |
|---|---|
| 0xBE | VDP data |
| 0xBF | VDP control/status |

Investigate:

- VDP register initialization.
- VRAM transfers.
- Tile pattern transfers.
- Name table updates.
- Palette configuration.
- Sprite attribute table.
- Horizontal scrolling.
- Vertical scrolling.

## 7. Controller Input

Common controller input ports:

| Port | Function |
|---|---|
| 0xDC | Controller input |
| 0xDD | Additional controller input |

Identify the routines that read controller input and translate the hardware bits into game actions.

## 8. Sound Hardware

The SMS uses a SN76489-compatible Programmable Sound Generator.

Common sound output ports:

| Port | Function |
|---|---|
| 0x7E | PSG output |
| 0x7F | PSG output |

Investigate:

- Music driver.
- Sound effect driver.
- Tone generation.
- Noise generation.
- Note tables.
- Sound effect priority.

## 9. Address Correlation

Every identified routine should record:

| Property | Value |
|---|---|
| Routine name | TBD |
| Physical ROM bank | TBD |
| Physical file offset | TBD |
| Offset within bank | TBD |
| Z80 runtime address | TBD |
| Mapper state | TBD |
| Evidence | TBD |
| Confidence | TBD |

## 10. Outstanding Questions

- Which mapper does Wonder Boy use?
- Which banks are fixed?
- Which banks are switched dynamically?
- Does the game use cartridge RAM?
- Where are player variables stored?
- Where are enemy variables stored?
- Which RAM addresses are used by interrupt handlers?
- Does the game copy executable routines into RAM?
