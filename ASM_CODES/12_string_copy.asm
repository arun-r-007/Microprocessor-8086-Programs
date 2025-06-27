org 100h


call newline1
call newline1

mov ah, 9
lea dx, mg1
int 21h

mov ah, 10
lea dx, msg
int 21h

mov si, offset msg+2
mov bx, 0

find_length:
    mov al, [si]
    cmp al, '$'
    je hi
    inc bx
    inc si
    jmp find_length

hi:
    dec bx
    mov arr_len, bl
    mov cx, bx 
    
    
    
mov si, offset msg+2      
mov di, offset msgcopy+2  
mov cl, arr_len
              

copy_loop:
    mov al, [si]        
    mov [di], al        
    inc si              
    inc di              
    loop copy_loop



call newline1
call newline1

mov ah, 9
lea dx, mg2
int 21h


mov ah, 9
mov dx,offset msgcopy+2
int 21h




hlt




newline1:
    mov ah, 9
    lea dx, newline
    int 21h
    ret

msg db 20
    db 0
    db 20 dup('$')
    
    
msgcopy db 20
        db 0
        db 20 dup('$')

arr_len db ?

mg1 db "Enter a string: $"
mg2 db "The copied string : $"


newline db 13, 10, "$"
