start:
nop ; maybe the zombie will start
add ax, clean ; add ax to point to clean
mov [(exit-start)], ax ; saves ax in the end of the code in order to not destroy the original code
; What if the code is in the end of the memory? (0xFF)? Too bad
mov word [1236h], (exit-start) ; saves the address of the end of the code in the memory after 1234h
mov word [1234h], 0x26FF ; jmp to the next code

clean:
mov word [(exit-start)], 0xcc ; remove the ax so no one can see it anymore

nothing:
jmp nothing

exit: