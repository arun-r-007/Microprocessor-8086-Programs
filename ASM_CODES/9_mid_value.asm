org 100h


call newline1
call newline1

   
mov ah,9
lea dx,msg1
int 21h



hi1:

    mov ah,1
    int 21h
    sub al,'0'
    mov ah,0 
    
    mov cx,ax
    
    mov bl,2
    div bl
    

    mov dl,al
    mov mid,al
    mov dh,0
    
    mov bp,dx
    

    cmp ah,0
    jz hi2
    jnz hi



hi:
    mov ax,cx
    mov arr_leng,al    


call newline1
call newline1

mov ah,9
lea dx,msg2
int 21h 


call newline1


mov si,0

insert_loop:
    call newline1
    call newline1    
    mov ah,1
    int 21h
    sub al,'0'
    mov array[si],al
    inc si
    loop insert_loop
             
             
             
call newline1
call newline1
    
mov ah,9
lea dx,msg3
int 21h 


mov bx,bp


mov dl,array[bx]
add dl,30h


mov ah,2
int 21h
      
   
   
hlt

hi2:
    mov ah, 0x00   
    mov al, 0x03   
    int 10h
    
    call newline1
    call newline1
    
    mov ah,9
    lea dx,msg11
    int 21h
    
    jmp hi1



newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret
    
    
newline db 13,10, "$"


msg1 db "Enter the number of Elements : $"
msg11 db "Enter the number of Elements in (ODD) : $"
msg2 db "Enter the numbers consecutive : $"
msg3 db "Middle value of the array : $"

array db 20 dup('$')
arr_leng db ?
mid db ?
