        .data 0x10000000 #Since by default .data starts at 0x10010000 we have to change it to avoid interference.
array:  .word 10, 20, 25, 500, 3
        .text
main:
        la $t0, array #This register stores the address of the array.
        li $t1, 0x10010000 #The location from which we will store the word.
        li $t2, 0x10010014 #The final address, used to exit the loop.

loop:   lw $s0, 0($t0)
        sw $s0, 0($t1)
        
        #Increments both address registers by the size of a word.
        add $t0, $t0, 4
        add $t1, $t1, 4
        
        blt $t1, $t2, loop
        nop #To deal with the delay slots in the branch instruction.