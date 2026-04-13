include 'emu8086.inc'
.model small
.stack 100h

.code
main proc

    ; input digit
    mov ah,01h
    int 21h

    sub al,30h      ; ASCII ? number
    mov bl,al

    ; check even/odd using AND
    and bl,1

    cmp bl,0
    je even

    print 13,10
    print 'Odd'
    jmp exit

even:
    print 13,10
    print 'Even'

exit:
    mov ah,4ch
    int 21h

main endp
end main