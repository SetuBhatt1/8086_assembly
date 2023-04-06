;WAP to add two 16-bit numbers with using data segment

data segment
n1 dw 1234h
n2 dw 1234h
ans dw ?
data ends

code segment
assume cs:code, ds:data
start:

mov ax,data	  ;initialise data segment
mov ds,ax

mov ax,n1	    ;first number
mov bx,n2	    ;second number
add ax,bx	    ;addition
mov ans,ax	

mov ax,4c00h	;terminate 
int 21h

code ends
end start
