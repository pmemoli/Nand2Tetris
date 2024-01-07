@1
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
D=A  // stores x in D
@3
D=A+D  // stores 3 + x address in D 
@R13
M=D  // stores 3 + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves the top of the stack to D
@R13
A=M
M=D  // pushes top of stack to ram[pointer + x]

@0
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

@0
D=A  // stores x in D
@THAT
D=M+D  // stores that + x address in D 
@R13
M=D  // stores that + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[that + x]

@1
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

@1
D=A  // stores x in D
@THAT
D=M+D  // stores that + x address in D 
@R13
M=D  // stores that + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[that + x]

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

@2
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

(MAIN_LOOP_START)

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
@COMPUTE_ELEMENT
D;JNE

@END_PROGRAM
0;JMP

(COMPUTE_ELEMENT)

@0
D=A  // stores x in D
@THAT
A=M+D 
D=M  // stores ram[that + x] in D
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

@1
D=A  // stores x in D
@THAT
A=M+D 
D=M  // stores ram[that + x] in D
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

@2
D=A  // stores x in D
@THAT
D=M+D  // stores that + x address in D 
@R13
M=D  // stores that + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[that + x]

@1
D=A  // stores x in D
@3
A=A+D
D=M  // stores 3 + x in D
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
// Stores addition in the top of the stack
A=A-1
M=M+D

@1
D=A  // stores x in D
@3
D=A+D  // stores 3 + x address in D 
@R13
M=D  // stores 3 + x in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves the top of the stack to D
@R13
A=M
M=D  // pushes top of stack to ram[pointer + x]

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

@MAIN_LOOP_START
0;JMP

(END_PROGRAM)

