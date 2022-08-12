        .data 0x10000000
num:    .word 0xabcd12bd
        .text
        
        lw $s0, num($0)
        
        andi $s0, $s0, 0x2BB #To get the required bytes to zero we perform a logical "and" between the number and 1010111011 in hex.