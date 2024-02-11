.model small
.stack 64h
.data
cwr equ 0ffc6 h
porta equ 0ffc0 h
portb equ 0ffc2 h
portc equ 0ffc4 h
.code
start:
mov ax,@data
mov ds,ax
mov al,80h
mov dx,cwr
out dx,al
mov al,f3h
mov dx,portc
out dx,al
mov al,ffh
mov dx,porta
out dx,al
mov al,ffh
mov dx,portb
out dx,al
mov cl,03h
call delay
top:
mov al,eeh
mov dx,porta
out dx,al
mov al,eeh
mov dx,portb
out dx,al
mov cl,02h
call delay
mov al,fch
mov dx,portc
out dx,al
mov al,7dh
mov dx,porta
out dx,al
mov al,57h
mov dx,portb
out dx,al
mov cl,15h
call delay
mov al,e7h
mov dx,portb
out dx,al
mov al,fdh
mov dx,porta
out dx,al
mov al,edh
mov dx,porta
out dx,al
mov cl,02h
call delay
mov al,f7h
mov dx,portb
out dx,al
mov al,f0h
mov dx,portc
out dx,al
mov al,f1h
mov dx,porta
out dx,al
mov cl,15h
call delay
mov al,fbh
mov dx,porta
out dx,al
mov al,fbh
mov dx,portb
out dx,al
mov al,50h
mov dx,portc
out dx,al
mov cl,15h
call delay
mov al,feh
mov dx,porta
out dx,al
mov al,feh
mov dx,portb
out dx,al
mov cl,03h
call delay
mov al,ffh
mov dx,porta
out dx,al
mov al,afh
mov dx,portc
out dx,al
mov al,eeh
mov dx,porta
out dx,al
mov al,eeh
mov dx,portb
out dx,al
mov cl,02h
call delay
mov al,bfh
mov dx,porta
out dx,al
mov al,bfh
mov dx,portb
out dx,al
mov cl,15h
call delay
jmp top
delay:
mov bx,10h
d1:
mov cx,0ffffh
d2:
loop d2
dec bx
jnz d1
int 03h
end start
.end