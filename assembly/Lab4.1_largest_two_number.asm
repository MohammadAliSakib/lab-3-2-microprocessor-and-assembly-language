include 'emu8086.inc'
.model small
.stack 100h


.code 

main proc
    
    
    mov ah,01h
    int 21h
    mov bl,al
    sub bl,30h
    
    mov ah,01h
    int 21h
    mov bh,al
    sub bh,30h 
    
    mov ah,01h
    int 21h
    mov cl,al
    sub cl,30h
    
    
    
    mov dl,bl
    cmp bh,dl
    jle l1
    mov dl,bh
    
    l1:
    cmp cl,dl
    jle l2
    mov dl,cl
    
    l2:
    add dl,30h
    print 13,10
    print 'largest'
    
    
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    
    
    
    
    
    
    
    
    
    
    
    

main endp
end main