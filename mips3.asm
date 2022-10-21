.data
	# первый набор иксов
	x10: .byte 0
	x20: .byte 0
	x30: .byte 0
	x40: .byte 1
	x50: .byte 0
	x60: .byte 0
	x70: .byte 1
	# второй набор иксов
	x11: .byte 1
	x21: .byte 1
	x31: .byte 1
	x41: .byte 0
	x51: .byte 1
	x61: .byte 1
	x71: .byte 1
.text
# устанавливаем значения в регистр 
lb $t1, x10
lb $t2, x20
lb $t3, x30
lb $t4, x40
lb $t5, x50
lb $t6, x60
lb $t7, x70
lb $s1, x11
lb $s2, x21
lb $s3, x31
lb $s4, x41
lb $s5, x51
lb $s6, x61
lb $s7, x71
# устанавливаем первый СК член,изменив значения некоторых регистров 
not $t1, $t1 
not $t2, $t2
not $t3, $t3
not $t5, $t5
not $t6, $t6
not $s4, $s4
# первый ск член запишем, например, в t1
and $t1, $t1, $t2
and $t1, $t1, $t3
and $t1, $t1, $t4
and $t1, $t1, $t5
and $t1, $t1, $t6
and $t1, $t1, $t7
# аналогично со вторым, записав в s1
and $s1, $s1, $s2
and $s1, $s1, $s3
and $s1, $s1, $s4
and $s1, $s1, $s5
and $s1, $s1, $s6
and $s1, $s1, $s7
# последний шаг - СДНФ
or $t8, $s1, $t1


	
