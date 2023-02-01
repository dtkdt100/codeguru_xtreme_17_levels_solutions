%define R_WRITE_LOC 0x1234
%define R_XOR_KEY 0xDEAD
%define R_KEY 0xBEEF

%define READ_LOC (R_WRITE_LOC+0x10)

nop
mov dx,[READ_LOC]
xor dx,R_XOR_KEY
cmp dx,R_KEY
jz @leak
@hide:
jmp @hide
@leak:
add ax,@loop
mov [R_WRITE_LOC],ax
@loop:
jmp ax