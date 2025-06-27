org 100h

call newline1
call newline1

mov ah,9
lea dx,mg1
int 21h  


mov ah, 10         
lea dx, msg      
int 21h


mov bp,offset msg+2


find_length:
    mov al, [bp]
    cmp al, '$'
    je hi
    inc bx
    inc bp
    jmp find_length

             
hi:
    dec bx
    mov cx,bx
    
    
mov bp,offset msg+2

mov si,0
mov di,0    
    
counting_loop:
    mov al,[bp]
    mov ah,0
    mov dx,0
    mov dx,cx
    mov cx,0
    mov cx,8
    
        
    rotating_8_bit_loop:
        rol al,1
        jc increment_1
        jnc increment_0
        
        
        l1:
            loop rotating_8_bit_loop
         
    l2:        
        mov cx,dx
        inc bp
        loop counting_loop
        
        

call newline1
call newline1
call newline1
call newline1

mov ah,9
lea dx,mg4
int 21h

mov dx,0  
mov ah,2
add dl,30h        
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


mov cx,4
mov ax,di
mov bp,0

li: 
    mov dl, 10
           
    div dl      
    
    mov bx, ax  

    mov dx, ax  
    mov dl, ah  
    mov dh, 0   
    push dx
    inc bp
         
    cmp al,0
    je ar
    
    mov ah,0
    loop li     

ar:
    mov cx,bp

lii:
    pop bx
    mov dl,bl  
    mov ah,2        
    add dl,30h
    int 21h
    loop lii



call newline1
call newline1
call newline1
call newline1

mov ah,9
lea dx,mg4
int 21h

mov dx,1  
mov ah,2
add dl,30h        
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


mov cx,4
mov ax,si
mov bp,0

li1: 
    mov dl, 10
       
    div dl      
    
    mov bx, ax  

    mov dx, ax  
    mov dl, ah  
    mov dh, 0   
    push dx
    inc bp     

    cmp al,0
    je ar1
    
    mov ah,0
    loop li1     

ar1:
    mov cx,bp

lii1:
    pop bx
    mov dl,bl  
    mov ah,2        
    add dl,30h
    int 21h
    loop lii1


hlt


increment_1:
    inc si
    cmp cx,0
    je l2 
    jmp l1
    
    
increment_0:
    inc di
    cmp cx,0
    je l2
    jmp l1
    



newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret

msg db 20
    db 0
    db 20 dup('$')
    
mg1 db "Enter a  STRING : $"
mg4 db "The Count of ' $"
mg5 db " ' in ' $"
mg6 db "is : $"

newline db 13, 10, "$"


