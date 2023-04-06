;WAP to find the sum of first N positive integers.

data segment
n1 db 05h,01h,02h,03h,04h,05h
ans db ?
data ends

code segment
assume cs:code, ds:data
start:

mov ax,data
mov ds,ax

lea si,n1
lea di,ans

mov cl,byte ptr[si]
inc si

mov al,byte ptr[si]
inc si

next:
mov bl,byte ptr[si]
inc si
add al,bl
loop next

mov byte ptr[di],al

mov ax,4c00h
int 21h

code ends
end start
