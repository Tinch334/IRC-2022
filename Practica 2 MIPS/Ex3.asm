        .data
arr:    .byte 1, -4, -5, 2
        .text
        
        #Get array address.
        la $s0, arr
        
        #Set $s1 and $s2 to zero.
        andi $s1, 0
        andi $s2, 0
    
loop:
        lb $t0, arr($s1) #Load array element.
        slti $t1, $t0, 0 #If $t0 < 0 then set $t1.
        add $s2, $s2, $t1 #$Add the result of the operation to $s2.    

        add $s1, $s1, 1 #Increment the counter.
        
        bne $s1, 4, loop
        nop

        #Set $s7 to zero, this is where the result will be stored.
        andi $s7, 0
        
        #If the register is not equal to 4 then we leave it at zero.             
        bne $s2, 4, notEqual
        nop
        add $s7, $s7, 1 #Otherwise set the register to 1.
        
notEqual: