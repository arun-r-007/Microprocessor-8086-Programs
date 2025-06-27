org 100h


mov ah,9
lea dx,mg1
int 21h

mov ah,1
int 21h
sub al, '0'
mov bl, al

mov ah,1
int 21h
sub al, '0'
mov bh, al

CALL newline1
CALL newline1

mov ah,9
lea dx,mg2
int 21h

mov ah,1
int 21h
sub al, '0'
mov cl, al

mov ah,1
int 21h
sub al, '0'
mov ch, al


mov al, bl
mov ah, 10
mul ah
add al, bh
mov bl, al


mov al, cl
mov ah, 10
mul ah
add al, ch
mov cl, al


add bl, cl
mov al, bl

CALL newline1
CALL newline1

mov ah,9
lea dx,mg3
int 21h


mov ah, 0
mov al,bl


mov cx,3

li: 
    mov dl, 10
    mov ah, 0   
    div dl      
    
    mov bx, ax  

    mov dx, ax  
    mov dl, ah  
    mov dh, 0   
    push dx     

    loop li     


mov cx,3

lii:
    pop bx
    mov dl,bl  
    mov ah,2        
    add dl,30h
    int 21h
    loop lii



hlt 

newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret

mg1 db "Enter a 2-digit Number 1: $"
mg2 db "Enter a 2-digit Number 2: $"
mg3 db "Result is: $"
newline db 13, 10, "$"
