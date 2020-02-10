.model small
.stack
.data
n DW 000Dh;13
.code
MOV AX,@data
MOV DS,AX
MOV AX,n
MOV BL,02h
DIV BL
MOV DH,00h
MOV DL,AL;DL stores the value of n/2
start: MOV AX,n;loop to check whether prime
DIV BL
CMP AH,00h
JZ by
INC BL
CMP BL,DL
JNZ start
MOV DX,0001h;1 in DX indicates prime
JMP last
by: MOV DX,0000h;0 in DX indicates not prime
last: END

