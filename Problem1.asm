; an Assembly Language program to take input from the user and display the output

ORG 100h          
.code  

main proc
   
    MOV AH, 1    
    INT 21h
    MOV BL, AL   

    MOV AH, 2
    MOV DL, 0Dh   
    INT 21h
    
    MOV DL, 0Ah   
    INT 21h

    MOV DL, BL
    MOV AH, 2
    INT 21h

    MOV AH, 4Ch
    INT 21h

main endp
end main
  



