// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

// while true:
    // setColor()

// while true
(LOOP)
@KBD
D = M

// Sets color based on KBD input
@SETCOLORBLACK
D;JEQ

(SETCOLORWHITE)
@color
M = 1
@PAINT
0;JMP

(SETCOLORBLACK)
@color
M = 0

// Loops over the addresses and bits of the screen
(PAINT)
@i
M = 0

(ADDRESSLOOP)
@SCREEN
D = A
@i
D = D + M  
@pointer  // Ubicacion de memoria del address a pintar
M = D

@color
D = M

@PAINTWHITE
D;JEQ

(PAINTBLACK)
@pointer
A = M
M = 0
@ENDIF
0;JMP

(PAINTWHITE)
@pointer
A = M
M = -1

(ENDIF)
@i
M = M + 1  // i ++

// Checks stop condition
@KBD
D = A
@i
D = M-D

@STOP
D;JGE  // If i > numero jump

@ADDRESSLOOP
0;JMP

(STOP)
@LOOP
0;JMP
