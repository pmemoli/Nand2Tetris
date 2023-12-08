// RAM[2] = RAM[0] + RAM[1]

@0
D=M  // D = M[0]

@1
D=D+M // D = M[0] + M[1]

@2
M=D

@6
0;JMP
