.model small
.stack 100h
.data 
string db 'HELLOS$'
.code
main proc
    .startup 
    mov cx,5h
    mov si,offset string 
    again:
    mov al,[si]
    add al,20h 
    mov [si],al 
    mov dl,[si]
    mov ah,02h
    int 21h
    inc si
    loop again
    .exit
    main endp
end main