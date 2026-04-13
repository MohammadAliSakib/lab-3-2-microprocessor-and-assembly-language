include 'emu8086.inc'
.model small
.stack 100h

.code
main proc

    ; first digit input
    mov ah,01h
    int 21h
    sub al,30h
    mov bl,al

    ; second digit input
    mov ah,01h
    int 21h
    sub al,30h
    mov bh,al

    ; multiply
    mov al,bl
    mul bh          ; AX = AL * BH

    ; result (only single digit assume)
    add al,30h

    print 13,10
    print 'Product: '

    mov dl,al
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h

main endp
end main