.MODEL SMALL
.STACK 100H
.DATA
M1  DB  'RED',0DH,0AH,'$'
M2  DB  'BLUE',0DH,0AH,'$'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

    MOV CX, 4
    PRINT_LOOP1:

        MOV AH, 9
        LEA DX, M1
        INT 21H
        DEC CX

    JNZ PRINT_LOOP1

    MOV CX, 4
    PRINT_LOOP2:

        MOV AH, 9
        LEA DX, M2
        INT 21H
        DEC CX

    JNZ PRINT_LOOP2

    MOV AH,4CH
    INT 21H

MAIN ENDP
END MAIN
