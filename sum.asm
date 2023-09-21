.model small
.stack 100h
.data  
num1 db 25h
num2 db 25h 
ans db ?
.code
main proc
    .startup 
    mov bl,num1
    add bl,num2
    mov ans,bl  
    .exit
    main endp
end main