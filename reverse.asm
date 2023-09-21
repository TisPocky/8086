.model small
.stack 100h
.data     
string db 'Nepal'
.code
main proc
    .startup   
    mov cx,05h
    mov si,offset string   
    add si,04h
    again:mov dl,[si]
    mov ah,02h
    int 21h
    dec si 
    loop again
    .exit
    main endp
end main