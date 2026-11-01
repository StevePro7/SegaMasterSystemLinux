
# Wonder Boy — Function Index

## 1. Purpose

Maintain a central index of all identified Z80 routines and important data structures.

Every discovered routine should be traceable to:

- Its physical ROM bank.
- Its physical file offset.
- Its Z80 runtime address.
- Its assembly instructions.
- Its callers and references.
- Its eventual C reconstruction.

IMPORTANT:

A Z80 runtime address alone is insufficient when ROM banking is involved. Always record the physical bank and mapper context.

## 2. Routine Categories

Use these categories:

| Category | Description |
|---|---|
| Startup | Reset and initialization |
| Interrupt | VBlank and interrupt handling |
| Main loop | Main game execution |
| Input | Controller handling |
| Player | Player movement and state |
| Physics | Gravity, velocity and movement |
| Collision | Collision detection |
| Enemy | Enemy behaviour |
| Objects | Collectibles and other objects |
| Graphics | VDP and graphics routines |
| Sprites | Sprite management |
| Scrolling | Screen scrolling |
| Sound | PSG and music |
| Level | Level and stage management |
| Banking | ROM bank switching |
| Data | Lookup tables and embedded resources |

## 3. Master Function Index

| ID | Routine | Bank | File Offset | Z80 Address | Category | Confidence |
|---|---|---|---|---|---|---|
| F-0001 | Reset entry | TBD | TBD | TBD | Startup | TBD |
| F-0002 | Initialization | TBD | TBD | TBD | Startup | TBD |
| F-0003 | Interrupt handler | TBD | TBD | TBD | Interrupt | TBD |
| F-0004 | Main game loop | TBD | TBD | TBD | Main loop | TBD |
| F-0005 | Input handler | TBD | TBD | TBD | Input | TBD |
| F-0006 | Player update | TBD | TBD | TBD | Player | TBD |
| F-0007 | Enemy update | TBD | TBD | TBD | Enemy | TBD |

Add additional entries as they are discovered.

## 4. Detailed Function Record

Copy this template for every important routine.

### F-XXXX — Routine Name

**Identification**

- Routine name:
- Category:
- Physical ROM bank:
- Physical file offset:
- Offset within bank:
- Z80 runtime address:
- Mapper state:
- Assembly filename:
- Assembly line number:

**Technical Information**

- Entry instructions:
- Input registers:
- Output registers:
- Registers modified:
- RAM locations accessed:
- Hardware ports accessed:
- Stack usage:

**References**

- Called by:
- Calls:
- Jump destinations:
- Related data tables:

**Behaviour**

Describe what the routine appears to do.

**Evidence**

Quote the relevant Z80 instructions and explain how they support the interpretation.

**Confidence**

- High
- Medium
- Low

**Outstanding Questions**

List anything that remains uncertain.

**C Reconstruction**

- Proposed C function:
- Proposed source file:
- Reconstruction status:
- Test results:

## 5. Cross-Reference Index

| Source Routine | Destination | Reference Type | Bank Context |
|---|---|---|---|
| TBD | TBD | CALL / JP / JR | TBD |

## 6. Data Table Index

| ID | Physical Bank | File Offset | Z80 Address | Suspected Purpose | Confidence |
|---|---|---|---|---|---|
| D-0001 | TBD | TBD | TBD | TBD | TBD |

## 7. C Reconstruction Mapping

| Original Routine ID | C Function | C Source File | Status |
|---|---|---|---|
| F-0001 | TBD | TBD | Not started |
| F-0002 | TBD | TBD | Not started |
| F-0003 | TBD | TBD | Not started |
| F-0004 | TBD | TBD | Not started |

## 8. Naming Conventions

Until a routine's purpose is established, use a provisional label such as:

```text
sub_1234
```

Only assign meaningful names when supported by evidence.

Never assume that two routines at the same Z80 address are identical if they belong to different physical ROM banks.

## 9. Confidence Levels

**High:** Confirmed by control flow, cross-references or runtime debugging.

**Medium:** Multiple assembly references support the interpretation.

**Low:** Based on a preliminary pattern or incomplete evidence.

## 10. Progress

| Category | Identified | Documented | Reconstructed |
|---|---:|---:|---:|
| Startup | 0 | 0 | 0 |
| Interrupts | 0 | 0 | 0 |
| Main loop | 0 | 0 | 0 |
| Player | 0 | 0 | 0 |
| Enemies | 0 | 0 | 0 |
| Graphics | 0 | 0 | 0 |
| Sound | 0 | 0 | 0 |
| Level management | 0 | 0 | 0 |
