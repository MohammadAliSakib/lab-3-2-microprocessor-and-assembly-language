include 'emu8086.inc'
.model small
.stack 100h

.code
main proc

    ; input character
    mov ah,01h
    int 21h

    cmp al,'A'
    je yes

    print 13,10
    print 'NO'
    jmp exit

yes:
    print 13,10
    print 'YES'

exit:
    mov ah,4ch
    int 21h

main endp
end main