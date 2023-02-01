%define R_WRITE_LOC 0x1234
%define R_XOR_KEY 0xDEAD
%define R_KEY 0xBEEF

%define READ_LOC (R_WRITE_LOC+0x10)

start:
mov word [READ_LOC], 0x6042 ;0xDEAD^0xBEEF
add ax, zombie ;nop
mov [(exit-start)], ax ;nop
nop
nop
nop
nop
mov bx, [R_WRITE_LOC] ; bx = xor zombie ax+@loop
mov word [bx+3], (exit-start)
mov word [bx+1], 0x26FF

zombie:
jmp zombie

exit: