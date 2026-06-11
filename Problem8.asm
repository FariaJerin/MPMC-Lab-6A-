;an Assembly Language program to find the smallest number among three given numbers
                
ORG 100h
.code

main proc
    ;Input first number
    MOV AH, 1
    INT 21h
    MOV BL, AL   
    MOV AH, 2   ;space
    MOV DL, 32   
    INT 21h  

    ;Input second number
    MOV AH, 1
    INT 21h
    MOV BH, AL   
    MOV AH, 2      ;space
    MOV DL, 32   
    INT 21h   

    ;Input third number
    MOV AH, 1
    INT 21h
    MOV CL, AL      
    MOV AH, 2       ;newline
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Compare BL and BH
    CMP BL, BH
    JL  BL_CL  ;If BL is smaller than BH, checking with CL
      
    ;Else, BH is smaller than BL, checking BH with CL
    CMP BH, CL
    JL  BH_Smallest  ;If BH < CL, then BH is the smallest
    MOV DL, CL       ;Else, CL is the smallest
    JMP Result

BL_CL:
    CMP BL, CL
    JL  BL_Smallest ;If BL < CL, then BL is the smallest
    MOV DL, CL      ;Else, CL is the smallest
    JMP Result

BH_Smallest:
    MOV DL, BH
    JMP Result

BL_Smallest:
    MOV DL, BL

Result:
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h 
    
main endp
end main






