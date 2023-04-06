;WAP to count the number of similar bits in the two 16-bit numbers

data segment
n1 dw 1234h
n2 dw 2345h
ans db ?
data ends

code segment
assume cs:code, ds:data
start:

mov ax,data
mov ds,ax

mov ax,n1
mov bx,n2
xor ax,bx

mov cx,16
mov bx,0

next:
shl ax,1 
jc skip
inc bx

skip:
loop next

mov ans,bl

mov ax,4c00h
int 21h

code ends
end start
