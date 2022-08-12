        .data 0x10000000
vect:   .byte 10, 20
        .text

        la $t0, vect

        #Loads both numbers.
        lb $s0, 0($t0)
        lb $s1, 1($t0)

        add $s2, $s0, $s1
        
        sb $s2, 2($t0)