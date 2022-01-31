.model small
.stack 100h
.data
arr db 11 dup(0) 
minput dw 'enter 10 numbers to fill array : ',10,13,'$'
mdisplay dw 10,13,'your array = : ',10,13,'$'
msearch dw 10,13,'enter number to search : ',10,13,'$'
mfound dw 10,13,'Yes! Number Found.',10,13,'$'
mnotfound dw 10,13,'Number Not Found',10,13,'$' 
nextline dw 10,13,'$'
space dw 9,'$'

.code


main proc
mov ax,@data
mov ds,ax

lea dx,minput
mov ah,09h
int 21h

mov si,0 
call input  
call search
call display



 
    
    
mov ah,4ch
int 21h   
main endp

input proc

mov cx,10
loop1:
mov ah,01h
int 21h
mov arr[si],al
inc si

lea dx,space
mov ah,09h
int 21h


loop loop1
mov si,0
mov cx,10



  
ret    
input endp 

         
         
         
         
         
         
         

display proc
 
lea dx,mdisplay
mov ah,09h
int 21h

mov cx,10
mov si,0

loop2: 
   

mov dl,arr[si]
mov ah,02h
int 21h

lea dx,space
mov ah,09h
int 21h

inc si

loop loop2

 
    
    
ret    
display endp



search proc
lea dx,msearch
mov ah,09h
int 21h

mov si,0

mov ah,01h
int 21h
mov bl,al

loop3: 
  

cmp bl,arr[si]
je found
inc si
loop loop3

lea dx,mnotfound
mov ah,09h
int 21h
ret
found:
lea dx,mfound
mov ah,09h
int 21h
ret
search endp   
end    
    
    
    
    
    
    
    

