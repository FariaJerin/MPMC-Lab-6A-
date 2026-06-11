;an Assembly Language program to find the smallest number between two given numbers

                  
ORG 100h
.code

main proc
    ;Input first number
    MOV AH, 1
    INT 21h
    MOV BL, AL     
    
    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Input second number
    MOV AH, 1
    INT 21h
    MOV BH, AL     

    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Compare numbers
    CMP BL, BH   
    JL  smallest

    MOV DL, BH
    JMP result

smallest:
    MOV DL, BL

result:
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h 
    
main endp
end main







