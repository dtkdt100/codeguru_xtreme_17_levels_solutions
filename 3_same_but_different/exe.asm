%define R_WRITE_LOC 0x1234


mov [R_WRITE_LOC],ax
add ax,@loop
nop
nop
nop
nop
nop
@loop:
jmp ax