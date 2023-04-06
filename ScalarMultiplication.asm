;WAP to perform scalar multiplication of array of five unsigned bytes

data segment
n1 db 01h,02h,03h,04h,05h
scale db 03h
ans dw 5 dup(0)
data ends

code segment
assume cs:code, ds:data
start:

mov ax,data
mov ds,ax

lea si,n1
lea di,ans
mov bl,scale

mov cx,05

next:
mov al,byte ptr[si]
mul bl	
mov word ptr[di],ax
inc si
add di,2
loop next

mov ax,4c00h
int 21h

code ends
end start
