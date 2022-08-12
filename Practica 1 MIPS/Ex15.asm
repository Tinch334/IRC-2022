        .data 0x10000000
num:    .word 0xffffff41
        .text

        lw $s0, num($0)
        
        xor $s0, $s0, 0x144 #To invert the required bits we perform a logical "xor" against a number with all of it's bits set to zero, except the ones we want to invert.