.model small
.stack 100h 
space macro
    mov dl,' '
    mov ah,02h
    int 21h
    endm
.data  
string db 'hello$'
.code
main proc
    .startup 
    mov cx,05h
    mov si,offset string
    again:
    mov dl,[si]
    mov ah,02h
    int 21h
    space
    inc si 
    loop again  
    .exit
    main endp
end main