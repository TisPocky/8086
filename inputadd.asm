.model small
.stack 100h
.data
.code
main proc
    .startup   
    mov ah,01h
    int 21h  
    sub al,30h   
    mov bl,al
    mov ah,01h
    int 21h    
    sub al,30h
    add al,bl   
    add al,30h 
    mov dl,al
    mov ah,02h
    int  21h
    .exit
    main endp
end main