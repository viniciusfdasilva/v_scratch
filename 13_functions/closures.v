pub fn main(){
	
	my_int := 1

	my_closure := fn[my_int] (){
		println(my_int)
	}

	my_closure()

	// ====================================================== //

	mut i := 1

	func := fn[i] () int {
		return i
	}

	println(func() == 1)
	i = 1
	println(func() == 1)

	// ====================================================== //

	c := new_counter()

	println(c())
	println(c())
	println(c())

	mut i2 := 0
	mut ref := &i2
	
	println_counter := fn[ref] ()
	{
		println(*ref)
	}

	println_counter()
	i2 = 10
	println_counter()

	f(dump(100),dump(200),dump(300))

}

fn f(a1 int, a2 int, a3 int){
	dump(a1+a2+a3)
}

fn new_counter() fn() int{
	mut i := 0

	return fn[mut i] () int{
		i++
		return i
	}
}