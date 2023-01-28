start:
add ax, nothing ; add ax to point to nothing
mov [(exit-start)], ax ; saves ax in the end of the code in order to not destroy the original code
mov bx, [0x1234] ; bx = zombie ax
mov word [bx+5], (exit-start) ; overrite the zombie code 
mov word [bx+3], 0x26FF ; overrite the zombie code with jump to [line above]

nothing:
jmp nothing
exit:
