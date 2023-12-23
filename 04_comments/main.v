/*
	multiply accepts two integers arguments namely x and y

	It then performs multiplication of input arguments and 
	return the product which is again a type of integer as 
	specified in the function signature

	x is an input argumento accepts values of type of int
	y is an input argument accepts values of type of int

	multiply functions returns the result of type int which 
	is a multiplication of input arguments x and y

*/
fn multiply(x int, y int) int
{
	return x * y
}

// main function callable by operating system
pub fn main() 
{
	println("Hello world")

	println(multiply(2,4))
}