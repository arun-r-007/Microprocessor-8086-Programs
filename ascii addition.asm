
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   

mov ah, 09h
lea dx, m1
int 21h

mov ah, 01h
int 21h
sub al, '0'
mov bl, al 


mov ah, 02h
mov dl, 0Ah
int 21h


mov ah, 09h
lea dx, m2
int 21h

mov ah, 01h
int 21h
sub al, '0'
add bl, al 

 
mov ah, 02h
mov dl, 0Ah
int 21h

add bl, '0'
mov ah, 02h
mov dl, bl
int 21h

mov ah, 4Ch
int 21h

m1 db 'Enter first number: $'
m2 db 'Enter second number: $'
   
ret




