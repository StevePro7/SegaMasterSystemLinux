
# Wonder Boy — Self-Modifying Code Investigation

## 1. Initial Observation

During the initial z80dasm execution, the following warning appeared:

```text
Warning: Self modifying code detected!
```

The warning appeared repeatedly during disassembly.

This is an observation from the disassembler, not confirmation that Wonder Boy genuinely modifies its own executable code.

## 2. What Is Self-Modifying Code?

Self-modifying code occurs when a program changes instructions or instruction operands that will subsequently be executed.

For example:

```asm
LD A, $10
LD (UPDATE_ROUTINE+1), A

UPDATE_ROUTINE:
LD A, $00
```

The program changes the operand of an instruction.

This technique can be used for:

- Optimising frequently executed code.
- Modifying addresses dynamically.
- Reducing conditional branches.
- Generating specialised routines.
- Improving performance in constrained systems.

This example is illustrative only and is not a confirmed Wonder Boy routine.

## 3. Sega Master System Considerations

The Sega Master System cartridge ROM is normally read-only from the Z80 CPU's perspective.

The CPU cannot ordinarily modify the original cartridge ROM bytes.

If genuine self-modifying code exists, investigate whether:

1. A routine is copied from cartridge ROM into RAM.
2. The RAM copy is modified.
3. The modified routine is subsequently executed.

Also investigate cartridge RAM only if the actual cartridge hardware supports it and the game uses it.

Do not assume a write to a ROM-mapped address successfully changes ROM contents.

## 4. Possible Causes of the Warning

Investigate the following possibilities:

| Possibility | Description |
|---|---|
| Genuine self-modifying code | Code is copied to RAM and modified |
| Data misidentified as code | Graphics or data decoded as instructions |
| Incorrect instruction boundaries | Disassembly begins at an incorrect location |
| Disassembler heuristic | The tool incorrectly identifies a write as code modification |
| RAM routine generation | Instructions are generated dynamically in writable memory |

## 5. Investigation Requirements

For each suspected occurrence:

1. Identify the instruction triggering the warning.
2. Record the physical ROM bank.
3. Record the file offset.
4. Record the Z80 runtime address, if known.
5. Identify the destination memory address.
6. Determine whether the destination is ROM, RAM or hardware.
7. Identify whether the destination is later executed.
8. Check whether the code is copied into RAM.
9. Confirm using an emulator debugger or execution trace where possible.

## 6. Suspected Self-Modifying Code Index

| ID | Bank | File Offset | Z80 Address | Instruction | Destination | Confidence |
|---|---|---|---|---|---|---|
| SMC-0001 | TBD | TBD | TBD | TBD | TBD | TBD |

## 7. Runtime Verification

| ID | Test | Result |
|---|---|---|
| SMC-0001 | Identify destination address | Not tested |
| SMC-0001 | Determine destination memory type | Not tested |
| SMC-0001 | Check whether destination is executable | Not tested |
| SMC-0001 | Verify with emulator debugger | Not tested |

## 8. Implications for C Reconstruction

If genuine self-modifying code is discovered, we should normally reconstruct its functionality rather than reproduce the original machine-code modification technique.

Possible C alternatives:

- Variables instead of patched instruction operands.
- Function dispatch instead of dynamically modified jumps.
- Lookup tables instead of generated instruction sequences.
- Small assembly routines where precise timing is essential.

Any replacement must be tested against the original game's behaviour.

## 9. Current Conclusion

Self-modifying code has NOT been confirmed.

The warning requires further investigation.

No specific Wonder Boy routine has yet been identified as genuinely self-modifying.

The original ROM must remain unchanged throughout the investigation.
