        .data
arr:    .byte 2, -4, -6
res:    .space 3
        .text
        
        #Get array addresses.
        la $s0, arr
        la $s1, res
        
        #Set $s2 to zero.
        andi $s2, 0
    
loop:
        lb $t0, arr($s2) #Load array element.
        sge $t1, $t0, 0 #If $t0 >= 0 then set $t1.
        sb $t1, res($s2) #Store the result of the operation
        
        add $s2, $s2, 1 #Increment the loop counter.
        
        bne $s2, 3, loop
        nop