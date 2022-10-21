.data
message: .ascii "hahahaha"


.text


la $v0, 6
syscall
add.d $f2, $f0 , $f2
la $v0, 6
syscall
add.d $f4, $f0 , $f4
la $v0, 6
syscall
add.d $f6, $f0 , $f6
la $v0, 6
syscall
add.d $f8, $f0 , $f8
mul.s $f10, $f2, $f4 # A = value1 * value2
div.s $f12, $f6, $f8 # B = value3 / value4
sub.s $f14, $f10, $f12 # C = A - B
la $v0, 4
la $a0, message
syscall