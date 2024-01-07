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

