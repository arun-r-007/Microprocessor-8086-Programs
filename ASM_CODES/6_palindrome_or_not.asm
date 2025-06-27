org 100h    

call newline1
call newline1

mov ah,9
lea dx,msg1
int 21h

mov ah,10
mov dx, offset msgf
int 21h


mov si,offset msgf+2


find_length:
    mov al,[si]
    cmp al,'$'
    je hi
    inc bx
    inc si
    jmp find_length
    
hi:
    dec bx
    mov cx, bx
    

    
mov si,offset msgf+2
    
    

pushing_loop:
    mov ah,0
    mov al,[si]
    push ax
    inc si
    loop pushing_loop
    
    
mov cx,bx

mov di,offset msgr+2
    
    
poping_loop:
    mov ax,0
    pop ax
    mov [di],al
    inc di
    loop poping_loop
    
    
mov cx,bx
mov si,offset msgf+2
mov di,offset msgr+2
mov dx,0
    
    
checking_loop:
    mov ah,[si]
    mov al,[di]
    cmp ah,al
    jne notcorrect
    inc dx
    inc si
    inc di
    loop checking_loop
    

cmp bx,dx
je correct
    
        

HLT

correct:
    call newline1
    call newline1
    mov ah,9
    lea dx,msg2
    int 21h
    ret
    
            
notcorrect: 
    call newline1
    call newline1
    mov ah,9
    lea dx,msg3
    int 21h
    ret
    

msgf db 20
     db 0
     db 20 dup('$')
    
    
msgr db 20
     db 0
     db 20 dup('$')
     
newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret
    
newline db 13, 10, "$"

    
    
msg1 db "Enter a String : $"
msg2 db "The given string is a palindrome$"
msg3 db "The given string is not a palindrome$"
