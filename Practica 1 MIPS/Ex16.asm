        .data
num:    .word 0x1237
        .text
        
        lw $s0, num($0)
        
        sll $s0, $s0, 5 #Performing a logical left shift is equivalent to multiplying by two. Since we want to multiply by 2^5 we shift five times.