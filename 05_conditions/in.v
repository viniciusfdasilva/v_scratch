pub fn main() {
	
	nums := [2,4,5]
	println(2 in nums) // true
	println(1 !in nums) // true
	println(6 in nums) // false

	// ===================================================== //

	m := {
		'one' : 1
		'two' : 2
	}

	println('one' in m) // true
	println('two' !in m) // false
	println('three' in m) // false

	// ===================================================== //

	parse := Parse{}

	if parse.token == .plus || parse.token == .minus || parse.token == .div || parse.token == .mult {
		println('yes')
	}

	if parse.token in [.plus, .minus, .div, .mult] {
		println('yes')
	}

}

struct Parse {
	token Token
}

enum Token {
	plus
	minus
	div
	mult
}