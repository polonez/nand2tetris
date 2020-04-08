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

// setup (initialize)
(LISTEN)
@SCREEN
D=A
@pointer
M=D

@KBD
D=M

@WHITE
D;JEQ

(BLACK)
@R0
M=-1
@DRAWLOOP
D;JMP

(WHITE)
@R0
M=0

(DRAWLOOP)
@pointer
D=M
@KBD  // SCREEN: [0x4000, 0x6000), KBD: 0x6000
D=D-A  // if pointer >= @KBD then go back to listen to keyboard input
@LISTEN
D;JGE

(LOOP)
@R0 // load color
D=M
@pointer
A=M // indirect
M=D // draw
@pointer
M=M+1 // move forward the pointer
@DRAWLOOP
0;JMP
