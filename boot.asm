mov ah, 0x0e ; tty mode
mov al, 'E'
int 0x10
mov al, 'd
int 0x10
mov al, 'U'
int 0x10
mov al, 'D'
int 0x10
mov al, 'O'
int 0x10
mov al 'S'
int 0x10

jmp $

times 510 - ($-$$) db 0
dw 0xaa55 
