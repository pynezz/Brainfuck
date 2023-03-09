# Exploring Brainfuck Esoteric Language

> Brainfuck is an esoteric programming language created in 1993 by Urban Müller.
> Notable for its extreme minimalism, the language consists of only eight simple commands, a data pointer and an instruction pointer. While it is fully Turing complete, it is not intended for practical use, but to challenge and amuse programmers. Brainfuck requires one to break commands into microscopic steps. 
> - [Wikipedia](https://en.wikipedia.org/wiki/Brainfuck)
 
## Commands

The eight language commands each consist of a single character:

 | Character | Meaning |
 | :-------- | :------ |
 | `>` | Increment the data pointer (to point to the next cell to the right). |
 | `<` | Decrement the data pointer (to point to the next cell to the left).  |
 | `+` | Increment (increase by one) the byte at the data pointer. | 
 | `-` | Decrement (decrease by one) the byte at the data pointer. |
 | `.` | Output the byte at the data pointer. | 
 | `,` | Accept one byte of input, storing its value in the byte at the data pointer. |
 | `[` | If the byte at the data pointer is zero, then instead of moving the instruction pointer forward to the next command, jump it forward to the command after the matching `]` command. | 
 | `]` | If the byte at the data pointer is nonzero, then instead of moving the instruction pointer forward to the next command, jump it back to the command after the matching `[` command. | 

## Turing machine
Brainfuck works like a memory tape, with 30000 cells with the value of 0. Manipulating the values is how you create programs.

	[0][1][2][3] ... [30000]
	-^-------------
	Data pointer

 - Each cell holds one byte 

## Resources

 - [Esolangs.org - Brainfuck](https://esolangs.org/wiki/Brainfuck)
 - [Online Brainfuck Compiler](https://www.tutorialspoint.com/execute_brainfk_online.php)

---

## Challenges

### String repeat

`string_repeat.bf` 

 - [Codewars Kata](https://www.codewars.com/kata/57a0e5c372292dd76d000d7e/bf)

