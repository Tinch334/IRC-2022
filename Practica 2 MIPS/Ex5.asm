        .data
arr:    .byte 23, 12, 0, 5, 0, 7, 9
arrLen: .byte 7
total:  .space 1
        .text

        #Get array length.
        lb $s0, arrLen($0)

        #Set $s1 and $s2 to zero.
        andi $s1, 0
        andi $s2, 0

loop:
        lb $t0, arr($s1) #Load array element.
        seq $t1, $t0, 0 #If $t0 == 0 set $t1.
        add $s2, $s2, $t1 #Add the set register to the zero counter.
        
        add $s1, $s1, 1 #Increment the loop counter.
        
        bne $s1, $s0, loop
        nop
        
        sb $s2, total($0) #Store final count.
