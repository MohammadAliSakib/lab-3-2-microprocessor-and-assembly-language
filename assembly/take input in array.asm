include 'emu8086.inc'
.model small
.stack 100h

.data
arr db 3 dup(?)

.code
main proc

    mov ax, @data
    mov ds, ax

    ; input + store
    mov ah,01h
    int 21h
    mov arr[0], al

    mov ah,01h
    int 21h
    mov arr[1], al

    mov ah,01h
    int 21h
    mov arr[2], al

    ; newline
    print 13,10

    ; print array
    print arr[0]
    print arr[1]
    print arr[2]

    mov ah,4ch
    int 21h

main endp
end main