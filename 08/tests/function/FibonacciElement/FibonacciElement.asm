@256
D=A
@SP
M=D

// push return-address-Sys.init
@return-address-Sys.init
D=A  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push LCL
@LCL
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push ARG
@ARG
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THIS
@THIS
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THAT
@THAT
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// ARG=SP-n-5
@diff
D=A
@SP
D=M-D
@ARG
M=D

// LCL=SP
@SP
D=M
@LCL
M=D

// goto f
@Sys.init
0;JMP

// final return
(return-address-Sys.init)

(Sys.init)

@4
D=A  // stores constant in D
@SP
A=M
M=D  // sets ram[SP VALUE] to constant
@SP
M=M+1  // increses SP value by one

// push return-address-Main.fibonacci
@return-address-Main.fibonacci
D=A  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push LCL
@LCL
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push ARG
@ARG
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THIS
@THIS
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THAT
@THAT
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// ARG=SP-n-5
@diff
D=A
@SP
D=M-D
@ARG
M=D

// LCL=SP
@SP
D=M
@LCL
M=D

// goto f
@Main.fibonacci
0;JMP

// final return
(return-address-Main.fibonacci)

(WHILE)

@WHILE
0;JMP

(Main.fibonacci)

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
// Stores substraction in D
A=A-1
D=M-D

@LESSTHAN3
D;JLT

@NOTLESSTHAN3
0;JMP

(LESSTHAN3)

@SP
A=M-1
M=-1

@END3
0;JMP

(NOTLESSTHAN3)
@SP
A=M-1
M=0

(END3)

@SP
AM=M-1
D=M
@IF_TRUE
D;JNE

@IF_FALSE
0;JMP

(IF_TRUE)

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


// FRAME = LCL
@LCL
D=M
@R13
M=D

// RET = *(FRAME-5)  // saves return address to a temp var.
@5
D=A
@R13
D=M-D
@R14
M=D

// *ARG = pop()  // sets the topmost value in the stack to the start of the argument segment
@ARG
D=M  // stores arg + 0 address in D 
@R13
M=D  // stores arg + 0 in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[arg + x]

// SP = ARG + 1
@ARG
D=M+1
@SP
M=D

// THIS = *(FRAME-1)
@1
D=A
@R13
D=M-D
@THIS
M=D

// THAT = *(FRAME-2)
@2
D=A
@R13
D=M-D
@THAT
M=D

// ARG = *(FRAME-3)
@3
D=A
@R13
D=M-D
@ARG
M=D

// LCL = *(FRAME-4)
@4
D=A
@R13
D=M-D
@LCL
M=D

// goto RET
@R14
A=M
0;JMP

(IF_FALSE)

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

// push return-address-Main.fibonacci
@return-address-Main.fibonacci
D=A  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push LCL
@LCL
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push ARG
@ARG
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THIS
@THIS
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THAT
@THAT
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// ARG=SP-n-5
@diff
D=A
@SP
D=M-D
@ARG
M=D

// LCL=SP
@SP
D=M
@LCL
M=D

// goto f
@Main.fibonacci
0;JMP

// final return
(return-address-Main.fibonacci)

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

// push return-address-Main.fibonacci
@return-address-Main.fibonacci
D=A  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push LCL
@LCL
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push ARG
@ARG
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THIS
@THIS
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// push THAT
@THAT
D=M  // stores address in D
@SP
A=M
M=D  // sets ram[SP VALUE] to address
@SP
M=M+1  // increses SP value by one

// ARG=SP-n-5
@diff
D=A
@SP
D=M-D
@ARG
M=D

// LCL=SP
@SP
D=M
@LCL
M=D

// goto f
@Main.fibonacci
0;JMP

// final return
(return-address-Main.fibonacci)

// Decreases SP value by one and sets address to it
@SP
AM=M-1
// Stores the last element of the stack in D
D=M
// Stores addition in the top of the stack
A=A-1
M=M+D


// FRAME = LCL
@LCL
D=M
@R13
M=D

// RET = *(FRAME-5)  // saves return address to a temp var.
@5
D=A
@R13
D=M-D
@R14
M=D

// *ARG = pop()  // sets the topmost value in the stack to the start of the argument segment
@ARG
D=M  // stores arg + 0 address in D 
@R13
M=D  // stores arg + 0 in ram[13]
@SP
AM=M-1
D=M  // decreases sp and saves ram[spval] to D
@R13
A=M
M=D  // pushes top of stack to ram[arg + x]

// SP = ARG + 1
@ARG
D=M+1
@SP
M=D

// THIS = *(FRAME-1)
@1
D=A
@R13
D=M-D
@THIS
M=D

// THAT = *(FRAME-2)
@2
D=A
@R13
D=M-D
@THAT
M=D

// ARG = *(FRAME-3)
@3
D=A
@R13
D=M-D
@ARG
M=D

// LCL = *(FRAME-4)
@4
D=A
@R13
D=M-D
@LCL
M=D

// goto RET
@R14
A=M
0;JMP

