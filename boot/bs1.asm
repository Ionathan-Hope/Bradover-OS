bits 16

bs1:
mov ax,-1 ;command for auto-initialize
mov dx,0x106 ;open command register
out dx,ax ;output command
xchg ax,ax ;pad
xchg ax,ax
xchg ax,ax ;pad
xchg ax,ax
xchg ax,ax ;pad
xchg ax,ax ;pad
xchg ax,ax
xchg ax,ax ;pad
xchg ax,ax
xchg ax,ax
xchg ax,ax
xchg ax,ax ;pad
xchg ax,ax ;pad
xchg ax,ax
xchg ax,ax
xchg ax,ax ;pad
in ax,dx
not ax ;check status
jz .halt ;halt if uninitialized
ret

.halt: hlt
jmp .halt
