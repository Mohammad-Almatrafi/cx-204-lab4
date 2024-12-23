.data 
arr: .space 400


.text

li t0, 0
li t1,100
la t2,arr
loop: 
    bge t0,t1,done
    slli t3,t0,2
    add t3,t3,t2
    sw t0,0(t3)
    addi t0,t0,1
    j loop
done:
ebreak

li a0,10
ecall