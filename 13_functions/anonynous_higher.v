fn sqrt(n int) int{
	return n*n
}

fn cube(n int) int{
	return n*n*n
}

fn run(value int, op fn(int) int) int{
	return op(value)
}

pub fn main(){
	
	println(run(5, sqrt))

	double_fn := fn(n int) int {
		return n + n
	}

	println(5, double_fn)

	res := run(5, fn(n int) int{
		return n+n
	})

	println(res)

	fns := [sqrt, cube]

	println(fns[0](10))
	fns_map := {
		'sqrt' : sqrt
		'cube' : cube
	}

	println(fns_map['cube'](2))

}