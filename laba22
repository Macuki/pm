.data
	A:.word 2
	B:.word 3
	E:.word 5
	

.text
.globl main # (A+B)*(A+B)*(A+B) - E
main:
	lw $t0, A
	lw $t1, B
	lw $t2, E
	# $s0 = i - счетчик, $s1 = result
	add $s1, $0, 1 # result = 1
	addi $s0, $0, 0 # i = 0
	addi $s5, $0, 3 # верхний предел - 3 
	for:
	beq $s0, $s5, done # если i == 3 - заканчиваем
	add $s3, $t0, $t1 # считаем A+B
	mul $s1, $s1, $s3 # res *= A*B
	addi $s0, $s0, 1 # ++i
	j for
	done:
	sub $s1, $s1, $t2 # (A+B)^(3) - E
	
	
	
