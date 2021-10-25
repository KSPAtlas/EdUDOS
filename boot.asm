; TODO: Add FAT header

mov ai, bootmsg
call bootmsg

jmp $

puts:
    mov ah, 0x0e
    mov al, [ai]
    int 0x10
    inc ai
    cmp ai, 0
    jne puts
    ret

bootmsg: db "EduDOS", 0

times 510 - ($-$$) db 0
dw 0xaa55 
