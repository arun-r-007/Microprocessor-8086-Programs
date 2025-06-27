org 100h

mov al, 25       
mov bl, 01      


add bl, al


mov cx, 8


print: mov ah, 2   
       mov dx, '0'
       test bx, 10000000b  
       jz zero
       mov dx, '1'
zero:  int 21h
       shl bx, 1
loop print
      
                   

hlt