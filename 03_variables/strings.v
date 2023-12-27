pub fn main()
{
	mut name := 'Bob'

	assert name.len == 3
	assert name[0] == u8(66)
	assert name[1..3] == 'ob'

	windows_newline := '\r\n'
	assert windows_newline.len == 2

	aardvark_str := '\x61ardvark'
	assert aardvark_str == 'aardvark'
	assert '\xc0'[0] == u8(0xc0)

	aardvark_str2 := '\141ardvark'
	assert aardvark_str2 == 'aardvark'

	start_str := '\u2605'
	//assert start_str == '*'
	assert start_str == '\xe2\x98\x85'
	
	s := 'hello 🌎'
	arr := s.bytes()

	assert s.len == 10

	s2 := arr.bytestr()
	assert s2 == s

	mut s1 := 'hello 🌎'
	assert s1 == 'hello 🌎'
	// s1[0] = 'H' Not allowed

	country := 'Netherlands'
	println(country[0])
	println(country[0].ascii_str())

	s3 := r'hello\nworld'
	println(s3)

	s4 := '42'
	n := s4.int()

	assert n == 42

	assert '0xc3'.int() == 195
	assert '0o10'.int() == 8
	assert '0b1111_0000_1010'.int() == 3850
	assert '-0b1111_0000_1010'.int() == -3850

	name = 'Bob'
	println('Hello, ${name}!')

	x := 123.4567

	println('[${x:.2}]')
	println('[${x:10}]')
	println('[${int(x):-10}]')
	println('[${int(x):010}]')
	println('[${int(x):b}]')
	println('[${int(x):o}]')
	println('[${int(x):X}]')
	println('[${10.0000:.2}]')
	println('[${10.0000:.2f}]')

	name = 'Bob'
	bobby := name + 'by'
	println(bobby)
	mut s5 := 'hello '
	s5 += 'world'
	println(s5)

	age := 10
	println('age = ${age}')
	age1 := 11
	println('age = ${age1.str()}')
	age2 := 12
	println('age = ${age2}')


}