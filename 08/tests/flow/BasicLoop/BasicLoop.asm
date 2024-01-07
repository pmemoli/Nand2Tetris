@0
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

@0
D=A  // stores x in D
@LCL
D=M+D  // stores local + x address in D 
@R13
M=D  // stores local + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[local + x]

(LOOP_START)

@0
D=A  // stores x in D
@ARG
A=M+D 
D=M  // stores ram[argument + x] in D
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

@0
D=A  // stores x in D
@LCL
A=M+D 
D=M  // stores ram[local + x] in D
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

// Decreases SP value by one and sets address to it
@SP
AM=M-1
// Stores the last element of the stack in D
D=M
// Stores addition in the top of the stack
A=A-1
M=M+D

@0
D=A  // stores x in D
@LCL
D=M+D  // stores local + x address in D 
@R13
M=D  // stores local + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[local + x]

@0
D=A  // stores x in D
@ARG
A=M+D 
D=M  // stores ram[argument + x] in D
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

@1
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

// Decreases SP value by one and sets address to it
@SP
AM=M-1
// Stores the last element of the stack in D
D=M
// Stores substraction in the top of the stack
A=A-1
M=M-D

@0
D=A  // stores x in D
@ARG
D=M+D  // stores arg + x address in D 
@R13
M=D  // stores arg + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[arg + x]

@0
D=A  // stores x in D
@ARG
A=M+D 
D=M  // stores ram[argument + x] in D
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

@SP
AM=M-1
D=M
@LOOP_START
D;JNE

@0
D=A  // stores x in D
@LCL
A=M+D 
D=M  // stores ram[local + x] in D
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

