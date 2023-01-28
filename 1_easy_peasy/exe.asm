%define R_JMP_LOC 0x1234

%define JMP_BX_OPCODE 0xE3FF


mov bx,R_JMP_LOC
mov cx,JMP_BX_OPCODE 
mov [bx],cx
jmp bx