;an Assembly Language program to find the largest number among three given numbers
                
ORG 100h
.code

main proc
    ;Input first number
    MOV AH, 1
    INT 21h
    MOV BL, AL   
    MOV AH, 2      ;space
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
    MOV AH, 2      ;newline
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Compare BL and BH
    CMP BL, BH
    JG  BL_CL      ;If BL is greater than BH, check BL with CL
      
    ;Else, BH is greater than or equal to BL, check BH with CL
    CMP BH, CL
    JG  BH_Largest ;If BH > CL, then BH is the largest
    MOV DL, CL     ;Else, CL is the largest
    JMP RESULT

BL_CL:
    CMP BL, CL
    JG  BL_Largest ;If BL > CL, then BL is the largest
    MOV DL, CL     ;Else, CL is the largest
    JMP Result

BH_Largest:
    MOV DL, BH
    JMP Result

BL_Largest:
    MOV DL, BL

Result:
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h 
    
main endp
end main







