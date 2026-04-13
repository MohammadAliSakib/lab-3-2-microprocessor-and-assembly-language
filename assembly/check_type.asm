include 'emu8086.inc'
.model small
.stack 100h

.code
main proc

    ; input character
    mov ah,1
    int 21h

    mov bl,al

    ; check Capital (A-Z)
    cmp bl,'A'
    jl check_small
    cmp bl,'Z'
    jle capital

check_small:
    ; check small (a-z)
    cmp bl,'a'
    jl check_number
    cmp bl,'z'
    jle small

check_number:
    ; check number (0-9)
    cmp bl,'0'
    jl special
    cmp bl,'9'
    jle number

special:
    print 13,10
    print 'Special Character'
    jmp exit

capital:
    print 13,10
    print 'Capital Letter'
    jmp exit

small:
    print 13,10
    print 'Small Letter'
    jmp exit

number:
    print 13,10
    print 'Number'

exit:
    mov ah,4ch
    int 21h

main endp
end main