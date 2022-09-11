        .data
arr:    .byte 15, 23, 5, 17, 11, 41
arrLen: .byte 6
rango1: .byte 10
rango2: .byte 20
total:  .space 1
        .text

        #Get array length.
        lb $s0, arrLen($0)
        lb $s1, rango1($0)
        lb $s2, rango2($0)

        #Set $s3 and $s4 to zero.
        andi $s3, 0
        andi $s4, 0

loop:
        lb $t0, arr($s3) #Load array element.
        
        blt $t0, $s1, endif #We check if $t0 < $s1.
        nop
        bgt $t0, $s2, endif #We check if $t0 > $s2.
        nop
        #If both checks passed that means we are between $s1 and $s2, we add 1 to $s4.
        add $s4, $s4, 1
endif:
        add $s3, $s3, 1 #Increment the loop counter.
        
        bne $s3, $s0, loop
        nop
        
        sb $s4, total($0) #Store final count.