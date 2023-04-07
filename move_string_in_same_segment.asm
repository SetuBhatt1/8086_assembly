;WAP to move a string in same segment.

data segment
str1 db 'hello$'
str2 db  5 dup(0),'$'
data ends

code segment
assume cs:code,ds:data,es:data
start:

mov ax,data
mov ds,ax
mov es,ax

lea si,str1
lea di,str2
cld

mov cx,5
rep movsb

mov ah,9
lea dx,str2
int 21h

mov ax,4c00h
int 21h

code ends
end start
