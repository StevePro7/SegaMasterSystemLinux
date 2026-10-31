
# Wonder Boy — Z80 Compatibility Investigation

## 1. Initial Disassembler Warnings

During the initial disassembly using z80dasm, the following warnings were reported:

```text
Warning: Code might not be 8080 compatible!

Warning: Self modifying code detected!
```

Both warnings appeared repeatedly during disassembly.

These warnings require investigation but do not automatically indicate a problem with the ROM or disassembly.

## 2. Target CPU

The Sega Master System uses the Zilog Z80 processor.

The Z80 supports instructions beyond the original Intel 8080 instruction set.

Examples include:

| Instruction | Description |
|---|---|
| DJNZ | Decrement B and jump if not zero |
| EXX | Exchange register sets |
| EX AF,AF' | Exchange accumulator and flags |
| LDIR | Block memory transfer |
| LDDR | Reverse block memory transfer |
| CPIR | Search memory block |
| BIT | Test a bit |
| SET | Set a bit |
| RES | Reset a bit |
| LD IX,nn | Load IX index register |
| LD IY,nn | Load IY index register |

These are legitimate Z80 instructions.

Their presence does not indicate an error.

## 3. 8080 Compatibility Warning

The warning:

```text
Code might not be 8080 compatible!
```

is consistent with software using Z80-specific instructions.

Investigation requirements:

1. Identify the instructions responsible for the warning.
2. Verify that they are valid Z80 instructions.
3. Identify their physical ROM locations.
4. Determine whether they are in executable code.
5. Identify any undocumented Z80 instructions separately.

The reconstruction must target the Z80, not the Intel 8080.

## 4. Instruction Investigation

| Physical Bank | File Offset | Z80 Address | Instruction | Valid Z80? | Notes |
|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | TBD |

## 5. Disassembler Information

| Property | Value |
|---|---|
| Disassembler | z80dasm |
| Version | TBD |
| Command line | TBD |
| Warning observed | Code might not be 8080 compatible |
| Frequency | Repeated |
| Triggering addresses | TBD |

## 6. Important Considerations

A disassembler can decode graphics, sound and other data bytes as apparently valid instructions.

Therefore:

- Valid Z80 instruction does not necessarily mean executable code.
- Instruction boundaries must be established.
- Control flow must be investigated.
- Data references must be identified.
- Runtime verification should be used where possible.

## 7. Conclusion

The 8080 compatibility warning is not currently considered an error.

The exact instructions triggering the warning have not yet been identified.

Further analysis is required to establish whether they are part of executable Wonder Boy code.
