;WAP to take one character from key board and convert into lowercase

data segment
s1 db 'enter char:$'
s2 db 0Ah,0Dh,'lowercase case:$'
data ends

code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax

mov ah,9
lea dx,s1
int 21h

mov ah,1
int 21h

ADD al,32

mov ah,9
lea dx,s2
int 21h

mov ah,2
mov dl,al
int 21h

mov ax,4c00h
int 21h

code ends
end start
