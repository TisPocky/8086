.model small
.stack 100h  
.data
string db 'Informotion'
.code
main proc
    .startup    
    mov si,offset string
    mov bl,11h
    mov bh,00h  
    again:
    cmp [si],'o'
    je here
    inc si
    dec bl
    cmp bl,00h
    je exitt
    loop again
    here:   
    inc bh
    inc si
    dec bl
    cmp bl,00h
    je exitt  
    loop again
    exitt:
    add bh,48
    mov dl,bh
    mov ah,02h
    int 21h
    .exit
    main endp
end main
