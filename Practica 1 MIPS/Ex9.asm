        .data 0x10000000
word:   .word 0x10203040
        .text

        la $t0, word #This register stores the address of the word.
        li $t1, 0x10010000 #The location from which we will store the word.
        li $t2, 0x10010004 #The final address, used to exit the loop.

loop:   lb $s0, 0($t0)
        sb $s0, 0($t1)
        
        #Increment both address registers by a byte.
        add $t0, $t0, 1
        add $t1, $t1, 1
        
        blt $t1, $t2, loop
        nop #To deal with the delay slots in the branch instruction.
