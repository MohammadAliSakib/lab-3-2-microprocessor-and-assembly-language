include 'emu8086.inc'
.model small
.stack 100h

.code 

main proc
    
    ; input 1
    mov ah,01h
    int 21h
    mov bl,al
    sub bl,30h
    
    ; input 2
    mov ah,01h
    int 21h
    mov bh,al
    sub bh,30h 
    
    ; input 3
    mov ah,01h
    int 21h
    mov cl,al
    sub cl,30h
    
    ; assume first is minimum
    mov dl,bl
    
    cmp bh,dl
    jge l1          ; if bh >= dl ? skip
    mov dl,bh       ; else update
    
l1:
    cmp cl,dl
    jge l2
    mov dl,cl
    
l2:
    add dl,30h
    print 13,10
    print 'Minimum: '
    
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h

main endp
end main