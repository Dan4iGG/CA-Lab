.data
x: .asciiz "Enter x: "
y: .asciiz "Enter y: "

v1: .float 5.4
v2: .float 12.3
v3: .float 18.23
v4: .float 8.23

.text
li $v0, 4
la $a0, x
syscall

li $v0, 6
syscall
mov.s $f1, $f0

li $v0, 4
la $a0, y
syscall

li $v0, 6
syscall
mov.s $f2, $f0


l.s $f3, v1
l.s $f4, v2
l.s $f5, v3
l.s $f6, v4

mul.s $f7, $f3, $f1
mul.s $f7, $f7, $f2

mul.s $f8, $f4, $f2

sub.s $f7, $f7, $f8

mul.s $f8, $f5, $1

add.s $f7, $f7, $f8

sub.s $f7, $f7, $f6

li $v0, 2
mov.s $f12, $f7
syscall


li $v0, 10
syscall
