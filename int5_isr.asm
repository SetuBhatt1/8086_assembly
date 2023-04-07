data segment
str1 db 'interrupt is processed$'
data ends

stack_seg  segment stack 
dw 50 dup(0)
top label word
stack_seg ends

code segment
assume cs:code, ds:data, ss:stack_seg
start:

mov ax,data
mov ds,ax

mov ax,stack_seg
mov ss,ax
lea sp,top

mov ax,0000h
mov es,ax

mov word ptr es:0014h,offset prt
mov word ptr es:0016h,seg prt
int 5h

mov ax,4c00h
int 21h

prt proc far
push ax
push dx

mov ah,9
lea dx,str1
int 21h

pop dx
pop ax
prt endp

code ends
end start
