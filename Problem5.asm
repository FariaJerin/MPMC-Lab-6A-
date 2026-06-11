; an Assembly Language program to perform division of two numbers

ORG 100h
.code

main proc
    ; 1. Input first digit
    MOV AH, 1
    INT 21h
    SUB AL, 30h
    MOV BL, AL          

    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ; 2. Input second digit
    MOV AH, 1
    INT 21h
    SUB AL, 30h
    MOV CL, AL    

    ;Division
    MOV AL, BL
    MOV AH, 0        
    DIV CL           
    MOV BH, AL      
    MOV BL, AH      

    ;Print quotient
    MOV AH, 9
    MOV DX, OFFSET MSG_Q
    INT 21h

    MOV DL, BH
    ADD DL, 30h      
    MOV AH, 2
    INT 21h          

    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Print Remainder
    MOV AH, 9
    MOV DX, OFFSET MSG_R
    INT 21h

    MOV DL, BL
    ADD DL, 30h      
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h

MSG_Q DB 0Dh, 0Ah, 'Quotient=$'
MSG_R DB 'Remainder=$'

main endp
end main
    







