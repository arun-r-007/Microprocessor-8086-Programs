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

pushing_loop:
    mov al, [si]
    mov ah, 0
    push ax
    inc si
    loop pushing_loop

call newline1
call newline1

mov ah, 9
lea dx, mg2
int 21h

mov ah, 1
int 21h
mov ah, 0
mov mg211, al

call newline1
call newline1

mov ah, 9
lea dx, mg21
int 21h

mov ah, 1
int 21h
mov ah, 0
mov mg212, al

call newline1
call newline1

mov ah, 9
lea dx, mg3
int 21h

mov ah, 1
int 21h
mov ah, 0
mov mg311, al

call newline1
call newline1

mov ah, 9
lea dx, mg31
int 21h

mov ah, 1
int 21h
mov ah, 0
mov mg312, al

mov cl, arr_len
mov ch,0
mov dx, 0


mov cl, arr_len
mov ch,0
mov dx, 0

mov si, offset msg+2      
mov di, offset msgcopy+2  
mov cl, arr_len
              

copy_loop:
    mov al, [si]        
    mov [di], al        
    inc si              
    inc di              
    loop copy_loop 


mov cl, arr_len
mov ch,0
mov dx, 0   
         

mov bx, offset msgcopy+2


mov al,arr_len
mov ah,0
dec ax
add bx,ax


mov si, offset msg+2     
mov di, offset msgcopy+2  

mov cl, arr_len           

mov bx,0

replace_loop:
    mov al, [si]          
    cmp al, mg211         
    je replace1
    cmp al, mg311         
    je replace2

    
    mov [di], al
    inc si
    inc di
    loop replace_loop
    jmp ak

replace1:
    inc bl 
    mov al, mg212        
    mov [di], al       
    inc si
    inc di
    loop replace_loop

replace2:
    inc bh
    mov al, mg312         
    mov [di], al          
    inc si
    inc di
    loop replace_loop


mov cx, dx

ak:

call newline1
call newline1
call newline1
call newline1

mov ah, 9
lea dx, mg4
int 21h

mov dl,mg212
mov dh,0
mov ah, 2
int 21h

mov ah, 9
lea dx, mg5
int 21h

mov ah, 9
mov dx, offset msg+2
int 21h

call newline1
call newline1

mov ah, 9
lea dx, mg6
int 21h

mov dl, bl
mov ah, 2
add dl, 30h
int 21h

call newline1
call newline1
call newline1
call newline1

mov ah, 9
lea dx, mg4
int 21h

mov dl,mg312
mov dh,0
mov ah, 2
int 21h

mov ah, 9
lea dx, mg5
int 21h

mov ah, 9
mov dx, offset msg+2
int 21h

call newline1
call newline1

mov ah, 9
lea dx, mg6
int 21h

mov dl,bh
mov ah, 2
add dl, 30h
int 21h

call newline1
call newline1

mov ah, 9
lea dx, mg7
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
mg2 db "Enter the first character to replace: $"
mg21 db "Enter the replacement for the first character: $"
mg3 db "Enter the second character to replace: $"
mg31 db "Enter the replacement for the second character: $"
mg4 db "The occurrence of ' $"
mg5 db " ' in ' $"
mg6 db "is: $" 

mg7 db "The Replaced String is : $"


mg211 db ?
mg212 db ?
mg311 db ?
mg312 db ?
newline db 13, 10, "$"
