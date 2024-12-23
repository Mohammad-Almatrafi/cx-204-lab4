


.text

li t0,5
li t1,6
li t2,0
loop:
ble t1,zero,done
andi t3,t1,1
beq t3,zero,after
add t2,t2,t0
after:
srli t1,t1,1
slli t0,t0,1
j loop
done:

mv a1,t2
li a0,1
ecall
ebreak
li a0,10
ecall