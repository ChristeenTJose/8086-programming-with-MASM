.model small
.stack
.data
first DB 00h
second DB 01h
LEN DW 0Ah
.code
MOV AX,@data
MOV DS,AX
MOV CX,LEN
MOV SI,2000h
MOV AL,first
MOV [SI],AL
INC SI
MOV BL,second
MOV [SI],BL
INC SI
GO: MOV DL,AL
ADD DL,BL
MOV [SI],DL
INC SI
MOV AL,BL
MOV BL,DL
LOOP GO
END

