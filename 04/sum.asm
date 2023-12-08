// Adds 1 + ... + 100
@i  // Associates the i label to a memory location
M = 1

@sum
M = 0

(LOOP)

// Loop clausule
@i
D = M  // D = i
@100  
D = D-A  // D = i - 100
@END
D;JGT 

// Loop body
@i
D = M
@sum
M = D+M
@i
M = M+1

@LOOP
0;JMP

(END)

@END
0;JMP

