;an Assembly Language program to print a simple pattern (e.g., triangle, square, or pyramid)
; Here i'm creating a Triangle with ( * ):


ORG 100h
.code

main proc
    MOV BL, 1        
    MOV BH, 7  ;numbers of row     

Row:
    MOV CL, BL     

Column:
    MOV AH, 2
    MOV DL, '*'     
    INT 21h
    
    MOV DL, 32       
    INT 21h

    DEC CL           
    JNZ Column   

    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    INC BL           
    DEC BH            
    JNZ Row    

    MOV AH, 4Ch
    INT 21h

main endp
end main




