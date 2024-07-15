bits 16

bs2:
mov es,0
mov di,1024
mov cx,256
cld
mov dx,0x100
mov ax,0
out dx,ax
add dx,2
out dx,ax
add dx,2
getinit: out dx,ax
add dx,2
mov ax,9
out dx,ax
sub dx,6
in ax,dx
stosb
out dx,ax
add dx,4
in ax,dx
add ax,2
loop getinit
ret
