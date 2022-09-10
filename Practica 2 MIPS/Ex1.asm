        .data
arr:    .byte 0, 1, 1, 1, 0
res:    .space 3
        .text
    
        #Get array addresses.
        la $s0, arr
        la $s1, res
        
        #Perform (V[1] and V[5]) and store it in res[1].
        lb $t0, 0($s0)
        lb $t1, 4($s0)
        and $t0, $t0, $t1
        sb $t0, 0($s1)
        
        #Perform (V[2] or V[4]) and store it in res[2].
        lb $t0, 1($s0)
        lb $t1, 3($s0)
        or $t0, $t0, $t1
        sb $t0, 1($s1)
        
        #Perform ((V[1] or V[2]) and V[3]) and store it in res[3].
        lb $t0, 0($s0)
        lb $t1, 1($s0)
        or $t0, $t0, $t1
        lb $t1, 2($s0)
        and $t0, $t0, $t1
        sb $t0, 2($s1)