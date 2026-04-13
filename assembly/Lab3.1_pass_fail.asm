include 'emu8086.inc'
.model small
.stack 100h
.code
main proc
    mov ah,01h
    int 21h
    mov bl,al
    sub bl,30h
                
    cmp bl,8
    jge gradea
    cmp bl,6
    jge gradeb
    cmp bl,4
    jge gradec
    
    print 'fail'
    jmp exit
    
    gradea:
    print 'grade-A'
    jmp exit
    
    gradeb:
    print 'grade-B'
    jmp exit
    
    gradec:
    print 'grade-C'
   
    
    exit:
    mov ah,4ch
    int 21h
   
   
   
   
   
   
    main endp
end main