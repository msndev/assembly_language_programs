.model small
.stack 64h
.data
a dw 53h,25h,19h,02h
count equ 04h
.code
start:
mov ax, @data
mov ds,ax
mov dx,count-1
again0:
mov cx,dx
mov si,1200h
lea si,a
again1:
mov ax,[si]
cmp ax,[si+2]
jl pr1
xchg [si+2],ax
xchg [si],ax
pr1:
add si,02h
loop again1
dec dx
jnz again0
mov bx,[si]
mov ah,4ch
int 21h
end start
.end