.model small
.stack
.data
str db 'malayalam','$'
msg1 db 'malayalam is palindrome','$'
msg2 db 'malayalam is not palindrome,'$'
.code
mov AX,@data
mov DS,AX
;find the length of string
lea SI,str
mov cx,00h
start: mov AL,[SI]
cmp AL,'$'
JE label1
INC CX
INC SI
JMP start
label1:lea DI,str
DEC SI
label2: mov AL,[DI] 
cmp AL,[SI]
jnz label3
INC DI
DEC SI
cmp DI,SI
jz label4
loop label2
label3: lea DX,msg2
JMP last
label4: lea DX, msg1
last: mov AH,09h
INT 21h
END
