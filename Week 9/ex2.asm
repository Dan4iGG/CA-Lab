.data 
	mes: .asciiz "Enter n: "
	outmes: .asciiz "Ans is: "
	Num: .word 0
	Ans: .word 0
.text
	.globl main
	main:
		#read the number
		li $v0, 4
		la $a0, mes
		syscall
		
		li $v0, 5
		syscall
		
		sw $v0, Num
		
		# call the func
		lw $a0, Num
		jal FindNsum
		sw $v0, Ans
		
		# display result
		li $v0, 4
		la $a0, outmes
		syscall
		
		li $v0, 1
		lw $a0, Ans
		syscall
		
		#tell the end prog
		li $v0, 10
		syscall
		
#-----------------------------------------
#find ans
.globl FindNsum
FindNsum:
	subu $sp, $sp, 8
	sw $ra, ($sp)
	sw $s0, 4($sp)
	
	#Base Case
	li $v1, 1
	li $v0, 0
	
	beq $a0, 0, funcDone
	
	move $s0, $a0
	sub $a0, $a0, 1
	jal FindNsum
	
	#work
	
	mul $v1, $v1, 2
	add $v0, $v1, $v0
	
	funcDone:
		lw $ra, ($sp)
		lw $s0, 4($sp)
		addu $sp, $sp, 8

		jr $ra
