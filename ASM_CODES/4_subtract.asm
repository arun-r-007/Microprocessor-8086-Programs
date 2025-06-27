org 100h

mov ah,9
lea dx,mg1
int 21h
 

mov ah,1
int 21h
sub al, '0'
mov cl, al
sub cl,1
mov ch,0
mov di,cx



CALL newline1
CALL newline1

mov ah,9
lea dx,mg2
int 21h 

CALL newline1
CALL newline1
mov ah,1
int 21h
sub al, '0'
mov ah,0
mov si, ax

mov sp,0

run:
    CALL newline1
    mov ah,1
    int 21h
    sub al, '0'
    mov ah,0
    push ax
    loop run
    

mov cx,di
mov ax,0

run2:
    pop di   
    add ax,di
    mov bx,ax
    loop run2
    



sub si,bx
mov bx,si   
    

JS negative




CALL newline1
CALL newline1


mov ah,9
lea dx,mg3
int 21h 

 

CMP bl,9
JG  one
 
   

mov dl,bL  
mov ah,2        
add dl,30h
int 21h
    
           



hlt




one: 
    mov cl,10
    mov bh,0
    mov ax,bx
    
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

hlt 




negative:
    NEG bx
    
    CALL newline1
    CALL newline1
    
    
    mov ah,9
    lea dx,mg33
    int 21h
    
    CMP bl,9
    jg  one1
       
    
    mov dl,bl  
    mov ah,2        
    add dl,30h
    int 21h
    
           
    one1: 
        mov cl,10
        mov bh,0
        mov ax,bx
        
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
   
   
        
hlt
    

     

newline1:
    mov ah, 9 
    lea dx, newline
    int 21h
    ret
    

mg1 db "Enter how many numbers : $"
mg2 db "Enter the numbers consecutive : $"
mg3 db "Result is: $"

mg33 db "Result is: -$"
newline db 13, 10, "$"
