pub fn main() 
{
	a := 123
	d := 0x7B
	b := 0b01111011
	c := 0o123
	
	assert a == 123
	assert d == 0x7B
	assert b == 0b1111011
	assert c == 0o123
	
	num := 1_000_000
	three := 0b0_11
	hexa := 0xF_F
	oct := 0o17_3

	assert num == 1_000_000
	assert three == 0b0_11
	assert hexa == 0xF_F
	assert oct == 0o17_3

	a1 := i64(123)
	b1 := u8(42)
	c1 := i16(12345)

	assert a1 == 123
	assert b1 == 42
	assert c1 == 12345

	f0 := 42e1
	f1 := 123e-2
	f2 := 456e+2

	assert f0 == 42e1
	assert f1 == 123e-2
	assert f2 == 456e+2
	
}