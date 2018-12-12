.data
input: .asciiz "please enter the number of bricks you want to use: "
output: .asciiz "\n number of moves are"
.text
main:   
la $a0,input      
li $v0,4
syscall    
la $v0,5
syscall
move $t3,$v0
li $t2,2
loop:
li $t1,2
mult $t1,$t2
mflo $t2
sub $t3,$t3,1
bgt $t3,1,loop
sub $t3,$t2,1
la $a0,output
li $v0,4
syscall
move $a0,$t3
li $v0,1
syscall    
li $v0,10
syscall
