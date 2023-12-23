
const min_i8 := i8(-128)
const max_i8 := i8(127)

const min_i16 := i16(-32768)
const max_i16 := i16(32767)

const min_i32 := i32(-2147483648)
const max_i32 := i32(2147483647)

const min_i64 := i64(-9223372036854775807 - 1)
const max_i64 := i64(9223372036854775807)

const mix_u8  := u8(0)
const mix_u16 := u16(0)
const mix_u32 := u32(0)
const mix_u64 := u64(0)

const max_u8  := u8(127)
const max_u16 := u16(32767)
const max_u32 := u32(2147483647)
const max_u64 := u64(9223372036854775807)


fn main() 
{
	mut integer := int(20)
	mut flt32 := f32(2)
	mut flt64 := f64(3)
	
	println(flt32)
	println(flt64)
	println(integer)

	println(min_i8)
	println(max_i8)

	println(min_i16)
	println(max_i16)

	println(min_i32)
	println(max_i32)
	
	println(min_i64)
	println(max_i64)

	println(min_u8)
	println(max_u8)

	println(min_u16)
	println(max_u16)

	println(min_u32)
	println(max_u32)
	
	println(min_u64)
	println(max_u64)

}