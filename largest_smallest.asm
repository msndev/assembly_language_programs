.model small
.stack 64h
.data
a db 53h,25h,19h,00h
count equ 05h
.code
start:
mov ax, @data
mov ds,ax
lea si,a
mov ax,00h
mov cx,05h
mov di,si
mov al,[si]
mov ah,[si]
l:
inc si
mov dh,[si]
mov dl,[di]
cmp dh,dl
jg greatest
code1:
cmp dh,dl
jl smallest
code2:
loop l
hlt
greatest:
mov ah,[si]
jmp code2
smallest:
mov al,[si]
jmp code2
mov ah,4ch
int 21h
end start
.end