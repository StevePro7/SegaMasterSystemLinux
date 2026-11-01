
# Wonder Boy — Game Engine Analysis

## 1. Purpose

Identify and document the internal game engine of Wonder Boy for the Sega Master System.

The ultimate goal is to understand the original game sufficiently to reconstruct its functionality in C using devkitSMS, SMSlib and SDCC.

No game-specific routines have been confirmed yet.

## 2. Investigation Rules

- Do not assume every ROM byte is executable.
- Keep physical ROM offsets separate from Z80 addresses.
- Record mapper state when identifying banked routines.
- Use actual assembly instructions as evidence.
- Identify data tables separately from executable code.
- Assign confidence levels to findings.
- Do not invent missing functionality.
- Preserve the original ROM.

## 3. Startup and Initialization

Investigate:

- Z80 reset entry point.
- Initial register setup.
- Stack pointer initialization.
- Interrupt initialization.
- RAM initialization.
- VDP initialization.
- Palette initialization.
- Sprite initialization.
- Sound initialization.
- ROM mapper configuration.
- Initial game state.

| Routine | Bank | File Offset | Z80 Address | Confidence |
|---|---|---|---|---|
| Reset entry | TBD | TBD | TBD | TBD |
| Initialization | TBD | TBD | TBD | TBD |
| VDP initialization | TBD | TBD | TBD | TBD |
| Sound initialization | TBD | TBD | TBD | TBD |

## 4. Interrupt Handling

Investigate:

- Interrupt mode.
- Interrupt vector.
- VBlank interrupt handler.
- Frame timing.
- Frame counters.
- Interrupt enable/disable operations.
- Synchronization with the VDP.

| Routine | Address | Purpose | Evidence |
|---|---|---|---|
| Interrupt handler | TBD | TBD | TBD |
| VBlank handler | TBD | TBD | TBD |

## 5. Main Game Loop

Identify the primary game loop.

Investigate the order in which the game performs:

1. Controller input.
2. Player update.
3. Enemy update.
4. Collision detection.
5. Game state updates.
6. Animation updates.
7. Scrolling.
8. Graphics updates.
9. Sound updates.
10. Frame synchronization.

| Routine | Address | Purpose | Confidence |
|---|---|---|---|
| Main game loop | TBD | TBD | TBD |
| Game state manager | TBD | TBD | TBD |
| Frame update | TBD | TBD | TBD |

## 6. Game States

Investigate the different states of the game.

Possible states to verify:

- Startup.
- Title screen.
- Attract/demo mode.
- Gameplay.
- Player death.
- Stage transition.
- Game over.
- Ending.

Do not assume every state exists without evidence.

| State | Entry Routine | Exit Condition | Evidence |
|---|---|---|---|
| Title screen | TBD | TBD | TBD |
| Gameplay | TBD | TBD | TBD |
| Death | TBD | TBD | TBD |
| Game over | TBD | TBD | TBD |

## 7. Player System

This is one of the most important areas of the reconstruction.

Investigate:

### Player Movement
- Horizontal movement.
- Acceleration.
- Deceleration.
- Direction.
- Jumping.
- Gravity.
- Vertical velocity.
- Ground detection.

### Player State
- Standing.
- Walking.
- Running.
- Jumping.
- Falling.
- Attacking, if applicable.
- Damaged.
- Dead.

### Player Collision
- Ground collision.
- Platform collision.
- Enemy collision.
- Object collision.
- Collectible collision.

| Routine | Bank | Address | Description | Confidence |
|---|---|---|---|---|
| Input handling | TBD | TBD | TBD | TBD |
| Player update | TBD | TBD | TBD | TBD |
| Movement | TBD | TBD | TBD | TBD |
| Jump handling | TBD | TBD | TBD | TBD |
| Collision | TBD | TBD | TBD | TBD |

## 8. Enemy System

Investigate:

- Enemy initialization.
- Enemy spawning.
- Enemy movement.
- Enemy animation.
- Enemy collision.
- Enemy damage.
- Enemy destruction.
- Enemy-specific behaviour.
- Enemy data structures.

Identify whether enemies share a common update routine or have individual routines.

## 9. Graphics and Sprite System

Investigate:

- Tile pattern data.
- Background maps.
- Sprite graphics.
- Sprite attribute table.
- Palette data.
- VDP register configuration.
- VRAM transfers.
- Screen scrolling.
- HUD rendering.
- Sprite animation.

Identify whether graphics are stored compressed or uncompressed.

## 10. Scrolling System

Investigate:

- Horizontal scrolling.
- Vertical scrolling, if present.
- Camera position.
- Player screen position.
- Level map position.
- Screen transition routines.
- Background update routines.

Determine whether scrolling is tile-based, screen-based or a combination.

## 11. Sound and Music

Investigate:

- Music playback routines.
- Sound effect playback.
- PSG initialization.
- Tone period tables.
- Noise generation.
- Music sequence format.
- Sound effect priority.
- Banked sound data.

## 12. Level Management

Investigate:

- Level initialization.
- Level selection.
- Level data format.
- Terrain data.
- Object placement.
- Enemy placement.
- Level completion.
- Stage transitions.

## 13. ROM Banking

Document every mapper write.

| Routine | Bank Before | Mapper Write | Bank After | Purpose |
|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD |

Identify routines that execute from one bank while accessing data in another.

## 14. Reconstruction Strategy

Once a routine is understood, document its proposed C equivalent.

Example:

| Original Routine | Proposed C Function | Source File |
|---|---|---|
| Player update | player_update() | player.c |
| Enemy update | enemy_update() | enemies.c |
| Collision routine | collision_check() | collision.c |
| Level update | level_update() | levels.c |
| Sound update | sound_update() | sound.c |

These are proposed names, not recovered original function names.

## 15. Findings

| ID | Finding | Evidence | Confidence |
|---|---|---|---|
| GE-001 | TBD | TBD | TBD |

## 16. Next Steps

1. Identify the reset vector.
2. Follow the initialization sequence.
3. Identify interrupt handlers.
4. Locate the main game loop.
5. Identify controller input.
6. Locate player movement.
7. Investigate enemy routines.
8. Identify graphics and sound systems.
9. Build a complete function index.
10. Begin incremental C reconstruction.
