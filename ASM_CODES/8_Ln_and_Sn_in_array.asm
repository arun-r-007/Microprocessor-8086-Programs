org 100h

call newline1
call newline1


mov ah,9
lea dx,msg1
int 21h


mov ah,1
int 21h
sub al,'0'
mov ah,0
mov cx,ax
mov arr_leng,al


call newline1
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

    
mov si,0
mov di,0
inc di   
mov ax,0
mov ax,di
mov count,al
mov ax,0
mov dx,0
mov cx,0
mov ch,0
mov cl,arr_leng
mov arr_leng1,cl
sub arr_leng1,1


;mov ah,2
;mov dl,arr_leng1
;add dl,30h
;int 21h



checking_loop1:
    mov al,array[si]
    mov bp,cx
    mov dx,cx
    sub dx,1
    mov cx,dx
    checking_loop2:
        mov ah,array[di]
        cmp al,ah
        jg al_is_greater
        ;jl ah_is_greater
        li: 
            mov array[si],al
            mov array[di],ah
            inc di
            loop checking_loop2
    lii:
        mov al,count
        mov ah,0
        mov di,ax
        add di,1
        
        mov ax,di
        mov count,al
        mov dl,count
        cmp dl,arr_leng
        je l1
        
        mov cx,bp
        
        inc si       
        loop checking_loop1  

l1:


;call newline1
;call newline1


;mov si, 0
;mov cx,0
;mov cl, arr_leng  

;print_loop:
;    mov dl, array[si]  
;    add dl, '0'        
;    mov ah, 2
;    int 21h           
;    inc si
;    loop print_loop

call newline1
call newline1
call newline1

mov ah,9
lea dx,msg4
int 21h
 
mov si, 0
mov al, array[si]   
mov first, al



mov dl,al
add dl, '0'
mov ah, 2
int 21h

call newline1
call newline1

mov ah,9
lea dx,msg3
int 21h       

mov bl, arr_leng
mov bh,0
sub bx,1 
mov al, array[bx]  
mov last, al       


mov dl,al
add dl, '0'
mov ah, 2
int 21h

hlt


newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret

newline db 13, 10, "$"

al_is_greater:
    mov bh,al
    mov bl,ah
    mov ax,bx     
    jmp li

;ah_is_greater:
    
;    jmp li


msg1 db "Enter the number of elements : $"
msg2 db "Enter the numbers consecutive : $"

msg3 db "The Largest Number : $"
msg4 db "The Smallest Number : $"

array db 20 dup('$')
arr_leng db ?
arr_leng1 db ?
count db ?
first db ?
last db ?
