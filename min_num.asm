;Write a program to find the minimum from a block of N 16-bit numbers.

data segment
block dw 0003h,1234h,2345h,1000h
ans dw ?
data ends

code segment
assume cs:code,ds:data
start:

mov ax,data
mov ds,ax

lea si,block
mov cx,word ptr[si]
add si,2

mov ax,word ptr[si]
add si,2

next:
cmp ax,word ptr[si]
jc nmin
mov ax,word ptr[si]

nmin:
add si,2
loop next

mov ans,ax

mov ax,4c00h
int 21h

code ends
end start
