.model small
.stack 100h
.data
twod db 1,2,3
     db 4,5,6
     db 7,8,9
meven db 'even numbers in above 2d array are : ',10,13,'$'
.code

mov ax,@data
mov ds,ax

lea dx,meven
mov ah,09h
int 21h 

;initilizing vales
lea bx,twod 
mov si,0
mov cx,3
row:
mov si,0 ;reset inset to 0
col:
mov ax,[bx+si] ;moving to next index/col of array 
mov dx,ax   ; saving number in dx
;comparing even using special function and ax,1
and ax,1
jz even:

continue:;take control from printing even number
inc si

cmp si,3
jne col

;next row
add bx,3 ;moving to next column

loop row
jmp normal 

;print number if even the  continue loop
even:
add dx,48
mov ah,02h
int 21h
jmp continue


normal:
 mov ah,4ch
 int 21h
 end