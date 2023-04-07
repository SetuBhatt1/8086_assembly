;WAP to take one character from key board and echo on screen.

data segment
s1 db 'enter char:$'
s2 db 0Ah, 0Dh,'entered char is:$'
data ends

code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax

mov ah,9
lea dx,s1
int 21h

mov ah,1	;al <- character
int 21h

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
