start:
nop
add ax, 19
mov [(exit-start)], ax
mov word [1236h], (exit-start)
mov word [1234h], 0x26FF

mov word [(exit-start)], 0xcc

nothing:
jmp nothing

exit: