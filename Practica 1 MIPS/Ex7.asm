        .data
array:  .word 10, 20, 25, 500, 3
        .text
main:
        #This register stores the address of the array.
        la $t1, array

        lw $s0, 0($t1)
        lw $s1, 4($t1)
        lw $s2, 8($t1)
        lw $s3  12($t1)
        lw $s4, 16($t1)