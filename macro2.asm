.model small
.stack 100h 
language macro
    mov dx,offset string2
    mov ah,09h
    int 21h
    endm
.data 
string1 db 'Assembly Program'
string2 db 'Language $'
.code
main proc
    .startup 
    mov cx,09h
    mov si,offset string1
    again:
    mov dl,[si]
    mov ah,02h
    int 21h    
    inc si
    loop again
    language
    mov cx,07h    
    ola:
    mov dl,[si]
    mov ah,02h
    int 21h  
    inc si
    loop ola
    .exit
    main endp
end main