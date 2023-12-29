struct Foo{
	mut:
		x int
}

pub fn main(){
	fa := Foo{1}
	mut a := fa
	a.x = 2
	assert fa.x == 1
	assert a.x == 2

	mut fc := Foo{1}
	mut c := &fc

	c.x = 2
	assert fc.x == 2
	assert c.x == 2

	println(fc)
	println(c)

}