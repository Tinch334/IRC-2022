        .data 0x10010002
byte:   .byte 0x10, 0x20, 0x30, 0x40
        .data 0x10010102
space:  .space 4
        .text

        la $t0, byte #This register stores the address of the bytes.
        la $t1, space #The location from which we will store the bytes.
        
        andi $t2, $t2, 0 #We will use t2 to store the final address, we start by empting it.
        add $t2, $t1, 4 #Calculate the final address

loop:   lb $s0, 0($t0)
        sb $s0, 0($t1)
        
        #Increment both address registers by a byte.
        add $t0, $t0, 1
        add $t1, $t1, 1
        
        blt $t1, $t2, loop
        nop #To deal with the delay slots in the branch instruction.