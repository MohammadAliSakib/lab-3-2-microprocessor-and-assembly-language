include 'emu8086.inc'
.model small
.stack 100h

.code
main proc

    ; input digit
    mov ah,01h
    int 21h

    sub al,30h      ; ASCII ? number

    ; multiply by 2 using shift left
    shl al,1        ; AL = AL * 2

    add al,30h      ; number ? ASCII

    print 13,10
    print 'Result: '

    mov dl,al
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h

main endp
end main