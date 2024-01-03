@111
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

@333
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

@888
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@StaticTest.8
M=D  // pushes top of stack to ram[static + x]

@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@StaticTest.3
M=D  // pushes top of stack to ram[static + x]

@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@StaticTest.1
M=D  // pushes top of stack to ram[static + x]

@StaticTest.3
D=M  // stores the static 3 value in D 
@SP
A=M
M=D  // sets ram[sp value] to D
@SP
M=M+1  // increases sp value by one

@StaticTest.1
D=M  // stores the static 1 value in D 
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
// Stores substraction in the top of the stack
A=A-1
M=M-D

@StaticTest.8
D=M  // stores the static 8 value in D 
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

(ENDPROGRAM)
@ENDPROGRAM
0;JMP