include 'emu8086.inc'
.model small
.stack 100h

.code
main proc

    ; input N
    mov ah,01h
    int 21h
    sub al,30h
    mov cl,al      ; loop counter

print_loop:
    print '*'
    loop print_loop

    mov ah,4ch
    int 21h

main endp
end main