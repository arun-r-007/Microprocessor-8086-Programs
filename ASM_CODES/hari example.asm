org 100h

mov al,10
mov bl,3

add al,bl

mov cl,10

div cl 

mov bx,ax


mov dl,bl  
mov ah,2        
add dl,30h
int 21h


mov dl,bh  
mov ah,2        
add dl,30h
int 21h

ret




                                                                                    
