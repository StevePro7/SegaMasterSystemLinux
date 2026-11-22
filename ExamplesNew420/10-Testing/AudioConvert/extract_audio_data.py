#!/usr/bin/env python3
"""
Extract audio data from Transbot assembly files and convert to C headers.

This tool parses the z80 assembly code and extracts:
1. Sound/music track data
2. Frequency tables
3. Envelope/waveform data
4. Generates C header files for PSGlib integration
"""

import re
import sys
from pathlib import Path
from typing import Dict, List, Tuple, Optional


class AudioDataExtractor:
    def __init__(self, asm_file: Path):
        self.asm_file = asm_file
        self.content = self._read_file()
        self.data_blocks: Dict[str, List[int]] = {}
        self.pointers: Dict[str, str] = {}
        self.labels: Dict[str, int] = {}
        
    def _read_file(self) -> str:
        """Read assembly file content."""
        try:
            with open(self.asm_file, 'r', encoding='utf-8', errors='ignore') as f:
                return f.read()
        except Exception as e:
            print(f"Error reading file: {e}")
            return ""
    
    def _parse_data_block(self, label: str, lines: List[str], start_idx: int) -> Tuple[int, List[int]]:
        """
        Parse a data block starting from label.
        Returns: (end_index, data_bytes)
        """
        data = []
        idx = start_idx + 1
        
        while idx < len(lines):
            line = lines[idx].strip()
            
            # Stop at next label
            if line.startswith('_') or line.startswith('.'):
                if ':' in line and not '.db' in line and not '.dw' in line:
                    break
            
            # Parse .db (define byte) directives
            if line.startswith('.db '):
                # Extract all bytes from line
                byte_str = line[4:].strip()
                # Handle both $ (hex) and 0x prefixes
                bytes_list = re.findall(r'\$([0-9A-Fa-f]+)|0x([0-9A-Fa-f]+)|(\d+)', byte_str)
                for b in bytes_list:
                    hex_val = b[0] or b[1] or b[2]
                    if hex_val:
                        try:
                            if b[2]:  # Decimal
                                data.append(int(hex_val, 10))
                            else:    # Hex
                                data.append(int(hex_val, 16))
                        except ValueError:
                            pass
            
            # Parse .dw (define word) directives
            elif line.startswith('.dw '):
                words = line[4:].strip().split()
                for word in words:
                    # Store pointer name instead of value for now
                    if word.startswith('_'):
                        self.pointers[label] = word
            
            idx += 1
        
        return idx, data
    
    def extract_data_blocks(self) -> None:
        """Extract all labeled data blocks from assembly."""
        lines = self.content.split('\n')
        
        for idx, line in enumerate(lines):
            stripped = line.strip()
            
            # Look for label definitions followed by data
            if stripped.startswith('_DATA_') and stripped.endswith(':'):
                label = stripped[:-1]  # Remove the colon
                
                # Parse the data block
                end_idx, data = self._parse_data_block(label, lines, idx)
                
                if data:
                    self.data_blocks[label] = data
                    # Extract comment if present
                    comment_match = re.search(r'; (.+)', line)
                    if comment_match:
                        print(f"Found {label} ({len(data)} bytes): {comment_match.group(1)}")
                    else:
                        print(f"Found {label} ({len(data)} bytes)")
    
    def extract_frequency_table(self) -> List[Tuple[int, int]]:
        """Extract the PSG frequency table (LSB, MSB pairs)."""
        freq_data = self.data_blocks.get('_DATA_349F_', [])
        frequencies = []
        
        # Frequencies are stored as (LSB, MSB) pairs
        for i in range(0, len(freq_data), 2):
            if i + 1 < len(freq_data):
                lsb = freq_data[i]
                msb = freq_data[i + 1]
                freq_value = lsb | (msb << 8)
                frequencies.append((lsb, msb, freq_value))
        
        return frequencies
    
    def extract_music_tracks(self) -> Dict[int, bytes]:
        """Extract all music/SFX tracks (10 main tracks)."""
        tracks = {}
        track_labels = [
            '_DATA_3531_', '_DATA_35B5_', '_DATA_35EC_', '_DATA_3762_', '_DATA_3879_',
            '_DATA_38AB_', '_DATA_38D3_', '_DATA_38FD_', '_DATA_390F_', '_DATA_3939_'
        ]
        
        for idx, label in enumerate(track_labels):
            if label in self.data_blocks:
                tracks[idx] = bytes(self.data_blocks[label])
                print(f"Track {idx}: {len(self.data_blocks[label])} bytes")
        
        return tracks
    
    def extract_envelopes(self) -> Dict[int, bytes]:
        """Extract all envelope/waveform tables (16 total)."""
        envelopes = {}
        envelope_labels = [
            '_DATA_3ACE_', '_DATA_3AD5_', '_DATA_3ADE_', '_DATA_3AE6_',
            '_DATA_3AF5_', '_DATA_3AFD_', '_DATA_3B01_', '_DATA_3B07_',
            '_DATA_3B0A_', '_DATA_3B1A_', '_DATA_3B21_', '_DATA_3B2B_',
            '_DATA_3B2D_', '_DATA_3B37_', '_DATA_3B3F_', '_DATA_3B45_'
        ]
        
        for idx, label in enumerate(envelope_labels):
            if label in self.data_blocks:
                envelopes[idx] = bytes(self.data_blocks[label])
                print(f"Envelope {idx}: {len(self.data_blocks[label])} bytes")
        
        return envelopes
    
    def generate_c_header(self, output_file: Path) -> None:
        """Generate C header file with all audio data."""
        header_guard = output_file.stem.upper()
        
        content = f"""/**
 * Transbot Audio Data - Automatically extracted from assembly
 * 
 * This file contains all sound effects and music tracks from the original
 * Transbot game, converted from z80 assembly to C hex arrays for use with PSGlib.
 * 
 * Generated by: extract_audio_data.py
 */

#ifndef {header_guard}_H
#define {header_guard}_H

#include <stdint.h>

/* ============================= MUSIC TRACKS ============================= */

"""
        
        # Extract and add music tracks
        tracks = self.extract_music_tracks()
        for idx, track_data in sorted(tracks.items()):
            content += self._format_data_array(f"MUSIC_TRACK_{idx}", track_data)
        
        # Frequency table
        content += "\n/* ============================= FREQUENCY TABLE ============================= */\n\n"
        freq_data = self.data_blocks.get('_DATA_349F_', [])
        content += self._format_data_array("PSG_FREQUENCIES", bytes(freq_data))
        
        # Envelopes
        content += "\n/* ============================= ENVELOPE TABLES ============================= */\n\n"
        envelopes = self.extract_envelopes()
        for idx, envelope_data in sorted(envelopes.items()):
            content += self._format_data_array(f"PSG_ENVELOPE_{idx:02d}", envelope_data)
        
        # Summary
        content += self._generate_summary(tracks, envelopes)
        
        content += f"\n#endif /* {header_guard}_H */\n"
        
        # Write file
        try:
            with open(output_file, 'w') as f:
                f.write(content)
            print(f"\nGenerated: {output_file}")
        except Exception as e:
            print(f"Error writing output file: {e}")
    
    def _format_data_array(self, name: str, data: bytes, bytes_per_line: int = 16) -> str:
        """Format binary data as C hex array."""
        lines = []
        
        lines.append(f"const uint8_t {name}[] = {{")
        
        for i in range(0, len(data), bytes_per_line):
            chunk = data[i:i + bytes_per_line]
            hex_values = ', '.join(f"0x{b:02X}" for b in chunk)
            lines.append(f"    {hex_values},")
        
        # Remove trailing comma from last line
        if lines[-1].endswith(','):
            lines[-1] = lines[-1][:-1]
        
        lines.append("};")
        lines.append("")
        
        return "\n".join(lines)
    
    def _generate_summary(self, tracks: Dict, envelopes: Dict) -> str:
        """Generate a summary comment section."""
        content = "\n/* ============================= SUMMARY ============================= */\n\n"
        content += "/*\n"
        content += f" * Total tracks: {len(tracks)}\n"
        content += f" * Total envelopes: {len(envelopes)}\n"
        content += " *\n"
        content += " * USAGE:\n"
        content += " *   PSGInit();\n"
        content += " *   PSGPlay(MUSIC_TRACK_0);\n"
        content += " *   \n"
        content += " *   // In game loop:\n"
        content += " *   PSGFrame();  // Call once per frame for music\n"
        content += " */\n"
        return content


def main():
    """Main entry point."""
    if len(sys.argv) < 2:
        print("Usage: extract_audio_data.py <input_asm_file> [output_header_file]")
        sys.exit(1)
    
    asm_file = Path(sys.argv[1])
    if not asm_file.exists():
        print(f"Error: File not found: {asm_file}")
        sys.exit(1)
    
    # Determine output file
    if len(sys.argv) >= 3:
        output_file = Path(sys.argv[2])
    else:
        output_file = asm_file.parent / "audio_data.h"
    
    print(f"Extracting audio data from: {asm_file}")
    print(f"Output file: {output_file}\n")
    
    # Extract data
    extractor = AudioDataExtractor(asm_file)
    extractor.extract_data_blocks()
    
    if not extractor.data_blocks:
        print("Warning: No data blocks found")
    
    # Generate header
    extractor.generate_c_header(output_file)
    
    # Print statistics
    print(f"\nExtraction complete!")
    print(f"  Data blocks found: {len(extractor.data_blocks)}")
    print(f"  Total data bytes: {sum(len(d) for d in extractor.data_blocks.values())}")


if __name__ == "__main__":
    main()
