org 100h

call newline1
call newline1

mov ah,9
lea dx,mg1
int 21h  


mov ah, 10         
lea dx, msg      
int 21h


mov si,offset msg+2


find_length:
    mov al, [si]
    cmp al, '$'
    je hi
    inc bx
    inc si
    jmp find_length

             
hi:
    dec bx
    mov cx,bx


mov si,offset msg+2


pushing_loop:

    mov al,[si]
    mov ah,0
    push ax
    inc si
    loop pushing_loop 
    

mov dl,0
mov dh,0
add dl,30h
mov si,dx


mov dl,1
mov dh,0
add dl,30h
mov di,dx




mov cx,bx
mov dx,0


checking_loop:
    pop ax
    cmp si,ax
    je increment1
    cmp di,ax
    je increment2
    loop checking_loop
    
    
mov cx,dx
    

call newline1
call newline1
call newline1
call newline1

mov ah,9
lea dx,mg4
int 21h

mov dx,si  
mov ah,2        
int 21h

mov ah,9
lea dx,mg5
int 21h

       
mov ah,9
mov dx,offset msg+2        ; we can use this also     (    lea dx, msg+2    )
int 21h


call newline1
call newline1


mov ah,9
lea dx,mg6
int 21h    
   

mov dl,cl  
mov ah,2        
add dl,30h
int 21h


call newline1
call newline1
call newline1
call newline1

mov ah,9
lea dx,mg4
int 21h

mov dx,di  
mov ah,2        
int 21h

mov ah,9
lea dx,mg5
int 21h
       
mov ah,9
mov dx,offset msg+2        ; we can use this also     (    lea dx, msg+2    )
int 21h

call newline1
call newline1


mov ah,9
lea dx,mg6
int 21h

    
         
mov dl,ch  
mov ah,2        
add dl,30h
int 21h


    
    
;mov ah, 09h
;mov dx,offset msg+2        ; we can use this also     (    lea dx, msg+2    )
;int 21h
 
 
 
HLT 


increment1:
    inc dl
    jmp checking_loop
    
increment2:
    inc dh
    jmp checking_loop
    
    
    

newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret



msg db 20
    db 0
    db 20 dup('$')
    
mg1 db "Enter a string in BYTES (0's and 1's) : $"
mg4 db "The Count of ' $"
mg5 db " ' in ' $"
mg6 db "is : $"

newline db 13, 10, "$"

