        .data
arr:    .byte 1, -4, -5, 2
res:    .space 1
        .text
        
        #Get array address.
        la $s0, arr
        la $s1, res
        
        #Set $s2 and $s3 to zero.
        andi $s2, 0
        andi $s3, 0
    
loop:
        lb $t0, arr($s2) #Load array element.
        slti $t1, $t0, 0 #If $t0 < 0 then set $t1.
        
        add $s3, $s3, $t1 #$Add the result of the operation to $s3.    

        add $s2, $s2, 1 #Increment the loop counter.
        
        bne $s2, 4, loop
        nop

        #Set $s7 to zero, this is where the result will be stored.
        andi $s7, 0
        
        #If the register is not equal to 4 then we leave it at zero.             
        bne $s3, 4, notEqual
        nop
        add $s7, $s7, 1 #Otherwise set the register to 1.
        
notEqual: