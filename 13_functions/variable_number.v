fn sum(a ...int) int{

	mut total := 0

	for x in a{
		total += x
	}

	return total
}

pub fn main(){
	println(sum())
	println(sum(2,1))
	println(sum(2,3,5,3))
	println(sum(1))

	a := [2,3,4]
	println(sum(...a))

	b := [4,5,6]
	println(sum(...b))
	
}