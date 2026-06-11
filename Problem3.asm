; an Assembly Language program to perform subtraction of two numbers
 
 
ORG 100h
.code  

main proc
    ;first input
    MOV AH, 1
    INT 21h
    SUB AL, 30h     
    MOV BL, AL        
    
    ;newline
    MOV AH, 2
    MOV DL, 0Dh    
    INT 21h
    MOV DL, 0Ah  
    INT 21h

    ;second input
    MOV AH, 1
    INT 21h
    SUB AL, 30h     
    MOV BH, AL

    ;Subtraction
    SUB BL, BH
    ADD BL, 30h   
    
    ;newline
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







