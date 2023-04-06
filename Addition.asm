;WAP to add two 16-bit numbers without using data segment

code segment
assume cs:code
start:

mov ax,1234h
mov bx,1234h
add ax,bx

mov ax,4c00h
int 21h

code ends
end start
