        .data 0x10000000
vect:   .word 18, -1215
        .text

        la $t0, vect
        li $t1, 0x10010000

        #Loads both numbers.
        lw $s0, 0($t0)
        lw $s1, 4($t0)

        div $s0, $s0, 5
        div $s1, $s1, 5

        div $s3, $s0, $1 #Since we are not using floats then the result of this division will be zero. It's 3 divided by -243.
        sb $s3, 0($t1)