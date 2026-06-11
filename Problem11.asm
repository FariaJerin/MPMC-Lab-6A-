 ; a program to implement the following instructions : SHL, SHR, ROL, and ROR  
 
 
 ORG 100h
.CODE

main proc
    MOV AL, 10101100b  ; Initial value
    SHL AL, 1          ; Shift Left (AL becomes 01011000b)
    SHR AL, 1          ; Shift Right (AL becomes 00101100b)
    ROL AL, 1          ; Rotate Left (AL becomes 01011000b)
    ROR AL, 1          ; Rotate Right (AL becomes 00101100b)


    MOV BL, AL         
    MOV CX, 8          

print_bits:
    SHL BL, 1           
    JC  print_one     
    
    MOV DL, '0'         
    JMP display
    
print_one:
    MOV DL, '1'        

display:
    MOV AH, 2           
    INT 21h
    LOOP print_bits    

    MOV AH, 4Ch
    INT 21h
main endp
end main  



