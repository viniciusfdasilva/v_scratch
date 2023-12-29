pub fn main(){

	x := true
	y := false

	if x {
		if !y {
			unsafe { goto my_label }
		}
		return 
	}

	my_label:
	println('oi')
}