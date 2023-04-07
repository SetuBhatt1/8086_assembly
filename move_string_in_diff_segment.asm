;WAP to move a string from one segment to another segment

data segment
str1 db 'hello$'
data ends

extra segment
str2 db 5 dup(0),'$'
extra ends

code segment
assume cs:code,ds:data,es:extra
start:

mov ax,data
mov ds,ax

mov ax,extra
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
