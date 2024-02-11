.model small
.stack 64h
.data
.code
start:
mov ax,@data
mov ds,ax
mov al,80h
mov dx,0ffc6h
out dx,al
mov bx,02h
a2:mov cx,00ffh
a1:mov al,77h
mov dx,0ffc4h
out dx,al
call delay
mov al,0bbh
mov dx,0ffc4h
out dx,al
call delay
mov al,0ddh
mov dx,0ffc4h
out dx,al
call delay
mov al,0eeh
mov dx, 0ffc4h
out dx,al
call delay
loop a1
dec bx
jnz a2
delay: mov ax,0500h
a3:nop
nop
dec ax
jnz a3
ret
end start
.end