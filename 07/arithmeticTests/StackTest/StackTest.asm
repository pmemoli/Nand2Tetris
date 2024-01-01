// Saves constant to D
@17
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
@17
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
// Stores substraction in D
A=A-1
D=M-D

@EQUAL2
D;JEQ

@NOTEQUAL2
0;JMP

(EQUAL2)

@SP
A=M-1
M=-1

@END2
0;JMP

(NOTEQUAL2)
@SP
A=M-1
M=0

(END2)

// Saves constant to D
@17
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
@16
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
// Stores substraction in D
A=A-1
D=M-D

@EQUAL5
D;JEQ

@NOTEQUAL5
0;JMP

(EQUAL5)

@SP
A=M-1
M=-1

@END5
0;JMP

(NOTEQUAL5)
@SP
A=M-1
M=0

(END5)

// Saves constant to D
@16
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
@17
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
// Stores substraction in D
A=A-1
D=M-D

@EQUAL8
D;JEQ

@NOTEQUAL8
0;JMP

(EQUAL8)

@SP
A=M-1
M=-1

@END8
0;JMP

(NOTEQUAL8)
@SP
A=M-1
M=0

(END8)

// Saves constant to D
@892
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
@891
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
// Stores substraction in D
A=A-1
D=M-D

@LESSTHAN11
D;JLT

@NOTLESSTHAN11
0;JMP

(LESSTHAN11)

@SP
A=M-1
M=-1

@END11
0;JMP

(NOTLESSTHAN11)
@SP
A=M-1
M=0

(END11)

// Saves constant to D
@891
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
@892
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
// Stores substraction in D
A=A-1
D=M-D

@LESSTHAN14
D;JLT

@NOTLESSTHAN14
0;JMP

(LESSTHAN14)

@SP
A=M-1
M=-1

@END14
0;JMP

(NOTLESSTHAN14)
@SP
A=M-1
M=0

(END14)

// Saves constant to D
@891
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
@891
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
// Stores substraction in D
A=A-1
D=M-D

@LESSTHAN17
D;JLT

@NOTLESSTHAN17
0;JMP

(LESSTHAN17)

@SP
A=M-1
M=-1

@END17
0;JMP

(NOTLESSTHAN17)
@SP
A=M-1
M=0

(END17)

// Saves constant to D
@32767
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
@32766
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
// Stores substraction in D
A=A-1
D=M-D

@GREATER20
D;JGT

@NOTGREATER20
0;JMP

(GREATER20)

@SP
A=M-1
M=-1

@END20
0;JMP

(NOTGREATER20)
@SP
A=M-1
M=0

(END20)

// Saves constant to D
@32766
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
@32767
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
// Stores substraction in D
A=A-1
D=M-D

@GREATER23
D;JGT

@NOTGREATER23
0;JMP

(GREATER23)

@SP
A=M-1
M=-1

@END23
0;JMP

(NOTGREATER23)
@SP
A=M-1
M=0

(END23)

// Saves constant to D
@32766
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
@32766
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
// Stores substraction in D
A=A-1
D=M-D

@GREATER26
D;JGT

@NOTGREATER26
0;JMP

(GREATER26)

@SP
A=M-1
M=-1

@END26
0;JMP

(NOTGREATER26)
@SP
A=M-1
M=0

(END26)

// Saves constant to D
@57
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
@31
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
@53
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
M=M+D

// Saves constant to D
@112
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
// Stores substraction in the top of the stack
A=A-1
M=M-D

@SP
A=M-1
M=-M

// Decreases SP value by one and sets address to it
@SP
AM=M-1
// Stores the last element of the stack in D
D=M
// Stores and-operation in the top of the stack
A=A-1
M=M&D

// Saves constant to D
@82
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
// Stores or-operation in the top of the stack
A=A-1
M=M|D

@SP
A=M-1
M=!M

