.model small
.stack 100h
.data
twod1 db 4,7,8
      db 3,9,2
      db 6,2,5
      db 1,3,9 
twod2 db 8,7,4
      db 2,9,3
      db 5,2,6
      db 9,3,1
twod3 db 9,3,1
      db 5,2,6
      db 2,9,3
      db 8,7,4
m1 db 10,13,'printing array 1 in reverse order : ',10,13,'$'
m2 db 10,13,'printing array 2 in reverse order : ',10,13,'$'
m3 db 10,13,'printing array 3 in reverse order : ',10,13,'$'
count db 0
nextline db 10,13,'$'
space db 9,'$'
.code

mov ax,@data
mov ds,ax




;initilizing vales
arr1:
lea si,twod1  ;array1
lea dx,m1
jmp body
arr2: 
lea si,twod2  ;array2
lea dx,m2
jmp body 
arr3:         ;array3
lea si,twod3
lea dx,m3
jmp body
body:
mov ah,09h
int 21h  
mov bx,0
mov cx,4
row:
mov bx,0 ;reset inset to 0
col:
mov ax,[si+bx] ;moving to next index/col of array 
push ax  ;saving in stack

inc bx

cmp bx,3
jne col
mov bx,cx
jmp poping
continue:;take control from printing row in reverse
mov cx,bx
;next row
add si,3 ;moving to next column

loop row
inc count
cmp count,1 ;solve array 2 if count is 1
je arr2
cmp count,2  ;else solve array 2 if count is 2
je arr3
jmp normal    ;else return 

poping:       ;printing array in reverse order
mov cx,3
loop1:
pop dx
add dx,48
mov ah,02h
int 21h

lea dx,space
mov ah,09h
int 21h
 
loop loop1

lea dx,nextline
mov ah,09h
int 21h
jmp continue


normal:
 mov ah,4ch
 int 21h
 end