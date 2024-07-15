bits 16

entry:
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
jmp bs2 ;next stage

%include boot-step-2.asm

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;essential code and data will be placed in;;;;;
;;;;last part of nested assembly inclusions;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
