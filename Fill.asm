// keyboard dependent
// when a key is pressed, the screens blackens
// no keys pressed then the screen clears white

@8192
D=A
@max
M=D

@0
D=A
@i
M=D

(LOOP)

@KBD
D=M
@CLEAR
D;JEQ

(FILL)
@max
D=M
@i
D=D-M
@LOOP
D;JLE

@i
D=M
@SCREEN
A=A+D
M=-1

@i
D=M
D=D+1
@i
M=D

@LOOP
0;JMP

(CLEAR)
@i
D=M
@SCREEN
A=A+D
M=0

@i
D=M
@LOOP
D;JLE

D=D-1
@i
M=D

@LOOP
0;JMP



