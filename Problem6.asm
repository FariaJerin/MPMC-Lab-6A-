;an Assembly Language program to calculate the sum of N numbers using a loop 

ORG 100h
.code

main proc
    ;print (N)
    MOV AH, 1
    INT 21h
    SUB AL, 30h  
    MOV CL, AL     
    MOV BL, 0      
      
    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h  
      
    ;Loop
L1:
    CMP CL, 0        
    JE Result

    ;Input numbers
    MOV AH, 1
    INT 21h
    SUB AL, 30h         
    ADD BL, AL       
    
    ; Print a space
    MOV AH, 2
    MOV DL, 32   
    INT 21h
       
    DEC CL           
    JMP L1          

Result:
    MOV AH, 2
    MOV DL, 0Dh
    INT 21h
    MOV DL, 0Ah
    INT 21h

    ;Sum
    MOV DL, BL
    ADD DL, 30h     
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h
main endp
end main






