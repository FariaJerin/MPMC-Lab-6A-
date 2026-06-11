; an Assembly Language program to perform addition of two numbers

ORG 100h
.code  

main proc
    ;first number
    MOV AH, 1
    INT 21h
    MOV BL, AL     
    
    ;Print Newline
    MOV AH, 2
    MOV DL, 0Dh     
    INT 21h
    MOV DL, 0Ah     
    INT 21h

    ;second number
    MOV AH, 1
    INT 21h
    MOV CL, AL    

    ;Addition
    ADD BL, CL      
    SUB BL, 48      

    ;Print Newline
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






