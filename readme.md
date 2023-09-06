## How C language works underthehood
C is widely used in systems and embedded application programming, which involves direct memory manipulation, low-level control, and standard libraries that provide essential functions and utilities. Many modern languages are built on C's concepts.

### A formal C program contains

- Starting with the preprocessing file, which is nothing but _#include <someheaderfile>_, it handles directives that start with '#' in the source code. It also performs conditional compilation using #ifdef.
- Compilation: The compiler (GCC, Clang, etc.) translates C source code into assembly code. It performs lexical analysis, parsing, semantic analysis, and optimization, among other tasks. The output is an assembly code file with a (.s) extension.
- The assembly code is translated into machine code using an assembler. The assembler converts assembly instructions into binary instructions. The output of this stage is an object file ('.o' or '.obj') file contains machine code instructions and data
- Linking, if the program consists of mulitple source file, each files is compiled seperately into an object file. The linker that combines the object files, resolves symbols and references, and links them with libraries. The result is an executable binary file.

Optimization: The compiler performs various optimizations to generate efficient machine code, including constant folding, loop unrolling, and inlining functions. Other aspects such as register allocation to minimize memory access, memory layout like the call stack, dynamic linking, and system calls are also considered.

Now here in this section I have fibonacci.c file which is a usual fibonacci series program.
As I said earlier compiler after analyzing the code it translates the c program into assembly code .s file. We are going to take a look at how the assembly file look like, you don;t need to memorize it or don't get overwhelmed of seeing those code. I just give this to understand it conceptually not super in-dpeth. If you want to make assemble file for your c program type the following command. Before that make sure that you have gcc compiler in your system.
The command is:

```
gcc -s cProgramName.c
```

Assembly program for fibonacci.c is in fibonacci.s

To get the intermediate code execute the following command, for that you need to install LLVM
Link to LLVM : [download link](https://github.com/llvm/llvm-project/releases/tag/llvmorg-17.0.0-rc3)
As usual installation, after installation.

```
clang -S -emit-llvm your_program.c -o your_program.ll
```

Intermediate code for fibonacci.c in fibonacci.ll

Command for Object file:

```
gcc -g -O -c fileName.c -o fileName.o
```

or

```
gcc -c hello.c
```

Object file for fibonacci.c is in fibonacci.o

Command for parse tree:

```
gcc -fdump-tree-original-raw fileName.c
```

Parse tree of fibonacci.c is in fibonacci.c.003t.original
