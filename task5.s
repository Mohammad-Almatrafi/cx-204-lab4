# star char is 42
# new line char is 10
# space char is 32


text:

    li s0,5 # value of n
    li t0,0 # i = 0
outer_loop:
    bge t0,s0, done

    li t1,0
    sub t2,s0, t0
    addi t2,t2,-1
inner_loop1:
    bge t1,t2, loop1_done
    li a0,11
    li a1,32
    ecall
    addi t1,t1,1
    j inner_loop1
loop1_done:

    li t1,0
    slli t2, t0,1
    addi t2,t2,1
inner_loop2:
    bge t1,t2, loop2_done
    li a0,11
    li a1,42
    ecall
    addi t1,t1,1
    j inner_loop2
loop2_done:

    li a0,11
    li a1,10
    ecall
    addi t0,t0,1
j outer_loop

done:

ebreak
li a0,10
ecall
