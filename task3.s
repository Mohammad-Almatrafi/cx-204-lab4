
.data 
vector1:  .word 1,2,3,4,5,6,7,8
vector2: .word 9,10,11,12,13,14,15,16
result: .word 0,0,0,0,0,0,0,0


.text

li t0, 0
li t1,100
la t2,vector1
la s7,vector2
la t5,result
loop: 
    bge t0,t1,done
    slli t3,t0,2
    add t6,t3,s7
    add t3,t3,t2
    lw s0, 0(t6)
    lw s1, 0(t3)
    add s2,s1,s0
    slli t3,t0,2
    add t3,t5,t3
    sw s2, 0(t3)
    addi t0,t0,1
    j loop
done:
ebreak

li a0,10
ecall