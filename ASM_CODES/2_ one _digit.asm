org 100h


mov ah,9
lea dx,mg1
int 21h

mov ah,1
int 21h
sub al, '0'
mov bl, al


CALL newline1
CALL newline1



mov ah,9
lea dx,mg2
int 21h


mov ah,1
int 21h
sub al, '0'
mov cl, al


mov al,bl
mov bl,cl


add al,bl

mov ch,al

CALL newline1
CALL newline1
 
mov al,ch
 
mov cl,10
mov ah,0
div cl

mov bx,ax


mov ah,9
lea dx,mg3
int 21h


mov dl,bl  
mov ah,2        
add dl,30h
int 21h

mov dl,bh  
mov ah,2        
add dl,30h
int 21h



newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret


hlt 


mg1 db "Enter a Number 1 : $"
mg2 db "Enter a Number 2 : $"
mg3 db "Result is : $"
newline db 13, 10, "$"  