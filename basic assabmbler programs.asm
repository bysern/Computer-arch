#this program adds two numbers

main:
	li $v0, 5
	syscall
	move $t0, $v0 # $v0 to $t0
	
	li $v0, 5
	syscall
	move $t1, $v0 # $v0 to $t0
	

	add $t2, $t0, $t1  # $t2 = $t1 + $t0
	
	li $v0, 1
	move $a0, $t2 # t2 -> $a0
	syscall
	
	li $v0, 10 #exit
	syscall
  
  
  
  
  	.text
main: 
	la $a0, hello_msg
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall
	
	.data
hello_msg: .asciiz "Hello world\n"
