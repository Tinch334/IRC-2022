        .data
texto:  .asciiz "Como andas mi amigo"
char:   .byte 97
total:  .space 1
        .text

        #Load character to count.
        lb $s0, char($0)

        #Set $s1 and $s2 to zero.
        andi $s1, 0
        andi $s2, 0

loop:
        lb $t0, texto($s1) #Load array element.
        
        seq $t1, $t0, $s0 #If $t1 == $s0 set $t1.
        add $s2, $s2, $t1 #Increment the match counter.        

        add $s1, $s1, 1 #Increment the loop counter.
        
        bne $t0, 0, loop #If not null terminator(0) branch.
        
        sb $s2, total($0) #Store final count.