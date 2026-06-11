; an Assembly Language program to perform multiplication of two numbers

ORG 100h
.CODE

main proc
    ;First Input
    MOV AH, 1
    INT 21h
    SUB AL, 30h     
    MOV BL, AL      
    
    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Second Input
    MOV AH, 1
    INT 21h
    SUB AL, 30h     

    ;Multiplication
    MUL BL        
    ADD AL, 30h
    MOV BL, AL     

    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;result
    MOV DL, BL
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h
    
main endp
end main
 

