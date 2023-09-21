.model small
.stack 100h
.data        
string db ?
.code
main proc
    .startup
    mov cx,6
    mov si,offset string  
    again:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    loop again  
    
    ola:
    mov dl,[si]   
    mov ah,02h
    int 21h
    dec si
    loop ola
    .exit
    main endp
end main