# 8086 Assembly Language Practice Programs

## Overview

This repository contains a collection of practice programs written in 8086 Assembly Language as part of my Microprocessors and Microcontrollers coursework. Each program demonstrates core concepts of the 8086 microprocessor architecture, instruction set, and runtime I/O using my own logic and design.

## Table of Contents

1. [Programs](#programs)
2. [Logic and Study Highlights](#logic-and-study-highlights)
3. [Prerequisites](#prerequisites)
4. [Usage](#usage)
5. [File Structure](#file-structure)
6. [Author](#author)

## Programs

| No. | Title                                                   | Description                                                                                       |
| --- | ------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| 1   | Addition of Two 8-bit & 16-bit Numbers (`add_8_16.asm`) | Performs addition of two 8-bit and two 16-bit values using registers and immediate addressing.    |
| 2   | Add Two One-Digit Decimals (`add_1digit.asm`)           | Reads two single-digit decimal inputs at runtime and displays the sum on the emulator screen.     |
| 3   | Add Two Two-Digit Decimals (`add_2digit.asm`)           | Adds two two-digit decimal numbers, handling multi-digit results and display formatting.          |
| 4   | Subtract N Decimal Numbers (`sub_n_numbers.asm`)        | Subtracts a sequence of N user-entered decimals and displays the final result.                    |
| 5   | Character Occurrence Counter (`count_chars.asm`)        | Finds and counts occurrences of two specified characters in an input string.                      |
| 6   | Palindrome Checker (`palindrome.asm`)                   | Reads a string from keyboard and determines if it reads the same forwards and backwards.          |
| 7   | Bit Count in Byte (`count_bits.asm`)                    | Reads a byte from keyboard, counts the number of 1s and 0s, and displays the counts.              |
| 8   | Find Largest & Smallest in Array (`min_max_array.asm`)  | Finds the maximum and minimum values in a user-input array.                                       |
| 9   | Middle Element of Odd Array (`middle_element.asm`)      | Transfers odd-sized array data and extracts its middle value.                                     |
| 10  | Array Sort Ascending & Descending (`sort_array.asm`)    | Sorts a given set of numbers in ascending and descending order via simple comparison-based logic. |
| 11  | Replace Characters with Symbols (`replace_chars.asm`)   | Replaces two selected characters in a string with `*` and `#`, and counts replacements.           |
| 12  | String Transfer (`string_transfer.asm`)                 | Copies a source string from one memory location to another using pointer arithmetic.              |

## Logic and Study Highlights

* **Register Usage**: Learned efficient register combinations for 8-bit and 16-bit operations (AL, AX, BX).
* **Addressing Modes**: Implemented immediate, direct, and register addressing in various examples.
* **String and Data Transfer**: Used `MOVSB`/`MOVSW` and pointer arithmetic to transfer and manipulate strings.
* **Control Flow**: Applied loops (`LOOP`, labels), conditional jumps (`JZ`, `JNZ`, `JC`, `JNC`), and flags to manage decision-making.
* **BIOS/DOS Interrupts**: Utilized INT 21h services for runtime input/output on emulators.
* **Bitwise Operations**: Explored shifting (`SHL`, `SHR`) and masking techniques to count bits.
* **Sorting & Search**: Built simple comparison-based sort and linear search routines.

## Prerequisites

* **Emulator**: EMU8086, DOSBox + MASM/TASM, or any 8086-compatible assembler and emulator.
* **Assembler**: MASM, TASM, or equivalent.
* **Operating System**: Windows (recommended for EMU8086) or cross-platform DOS emulator.

## Usage

1. Clone this repository:

   ```bash
   https://github.com/arun-r-007/Microprocessor-8086-Programs.git
   ```
2. Open the `.asm` file in your preferred editor.
3. Assemble and link:

   ```bash
   masm program.asm;
   link program.obj;
   ```
4. Run in emulator:

   ```bash
   emu8086 program.exe
   ```
5. Follow on-screen prompts for input/output.

## File Structure

```
8086-practice-programs/
├── add_8_16.asm
├── add_1digit.asm
├── add_2digit.asm
├── sub_n_numbers.asm
├── count_chars.asm
├── palindrome.asm
├── count_bits.asm
├── min_max_array.asm
├── middle_element.asm
├── sort_array.asm
├── replace_chars.asm
└── string_transfer.asm
```

## Author

**Arun R.** – Master of Science in Software Systems @ Coimbatore Institute of Technology

Based on coursework in Microprocessors & Microcontrollers (EMU8086) and self-designed logic.
