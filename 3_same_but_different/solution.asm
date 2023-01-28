start:
add ax, zombie ; add ax to point to zombie
mov [(exit-start)], ax ; saves ax in the end of the code in order to not destroy the original code
mov bx, [0x1234] ; bx = zombie ax
mov word [bx+10], (exit-start) ; overrite the zombie code 
mov word [bx+8], 0x26FF ; overrite the zombie code with jump to [line above]

zombie:
jmp zombie
exit:
