%define R_KEY 0xBEEF

start:
add ax, zombie
mov [(exit-start)], ax
nop
nop
mov bx, [0x1234] ; bx = xor zombie ax
xor bx, R_KEY ; xor again to get the original value
mov word [bx+17], (exit-start)
mov word [bx+15], 0x26FF

zombie:
jmp zombie
exit: