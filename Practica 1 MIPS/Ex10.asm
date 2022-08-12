        .data
word:   .word 0x10203040
        .text

        la $t0, word

        #We load both half words into registers.
        lh $s0, 0($t0)
        lh $s1, 2($t0)

        #We store them in inverted order.
        sh $s1, 0($t0)
        sh $s0, 2($t0)