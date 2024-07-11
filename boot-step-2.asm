bits 16

bs2:
push dx
mov dx,0
mov cx,0
mov ax,510
mov bx,keyword1
call inputspecific
pop dx
push dx
mov dx,0
mov cx,0
mov ax,0
mov bx,keyword2
call inputspecific
pop dx
