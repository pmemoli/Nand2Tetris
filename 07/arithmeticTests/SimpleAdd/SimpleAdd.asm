// Saves constant to D
@7
D=A
// Sets A to SP value
@SP
A=M
// Sets ram[pointeraddress] to the constant 
M=D
// Increases SP by one
@SP
M=M+1

// Saves constant to D
@8
D=A
// Sets A to SP value
@SP
A=M
// Sets ram[pointeraddress] to the constant 
M=D
// Increases SP by one
@SP
M=M+1

// Decreases SP value by one and sets address to it
@SP
AM=M-1
// Stores the last element of the stack in D
D=M
// Stores addition in the top of the stack
A=A-1
M=D+M

