%define R_WRITE_LOC 0x1234
%define R_KEY 0xBEEF

mov bx,ax ; bx=ax
add bx,@loop ; bx=bx+@loop
xor ax,R_KEY ; xor
mov [R_WRITE_LOC],ax ; put the xor value in 1234
nop
nop
nop
nop
nop
@loop:
jmp bx