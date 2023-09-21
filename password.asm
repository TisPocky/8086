.model small
.stack 100h
.data      
password db 'pocky$' 
msg1 db 'Enter Password:$'
msg2 db 'Welcome$'
msg3 db 'Invalid User$'
val db ?
.code
main proc
    .startup    
    mov dx,offset msg1
    mov ah,09h
    int 21h
    mov bh,00h
    mov cx,05h 
    mov si,offset password 
    mov ah,01h 
    again:
    int 21h
    mov val,al   
    mov bl,[si]
    cmp val, bl
    jne skip 
    inc bh
    skip:inc si 
    loop again
    cmp bh,05h
    jne invalid    
    mov dx,offset msg2
    mov ah,09h
    int 21h
    jmp exitt:
    invalid:mov dx,offset msg3
    mov ah,09h
    int 21h
    exitt: 
    .exit
    main endp
end main