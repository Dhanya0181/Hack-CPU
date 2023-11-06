// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.
(BEGIN)
    @SCREEN
    D=A
    @addr
    M=D

    @0
    D=M
    @n
    M=D

    @i
    M=0

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGT

    @addr
    D=M
    @i
    A=D+M // Calculate the address (addr + i)
    M=-1 // Set the pixel to black

    @i
    M=M+1
    @32
    D=A
    @addr
    M=D+M
    @LOOP
    0;JMP

(END)
    @END
    0;JMP

