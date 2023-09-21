.model small
.stack 100h
.data 
string db 'pocky $'
.code
main proc
    .startup 
    mov cx,5h
    mov si,offset string 
    again:
    sub [si],20h
    mov dl,[si]
    mov ah,02h
    int 21h
    inc si
    loop again
    .exit
    main endp
endm main