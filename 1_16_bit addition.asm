
org 100h

mov ax, 655h       
mov bx, 34h      


add bx, ax


mov cx, 16


print: mov ah, 2   
       mov dx, '0'
       test bx, 1000000000000000b  
       jz zero
       mov dx, '1'
zero:  int 21h
       shl bx, 1
loop print
           
           

hlt
