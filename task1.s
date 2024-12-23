.data
equal: .asciiz "Equal\n"

not_equal: .asciiz "Not Equal\n"

.text
main:
li t0,5 # x = 5
li t1,10 # y = 10
bne t0,t1,else
li a0,4
la a1,equal
ecall
j done
else:

li a0,4
la a1,not_equal
ecall
done:
ebreak
li a0,10
ecall
