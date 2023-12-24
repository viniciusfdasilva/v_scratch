
pub fn main() {

	// ==================================== //
	// Basic for

	numbers := [1,2,3,4,5]

	for num in numbers {
		println(num)
	}

	names := ['Sam', 'Peter']

	for i, name in names {
		println("${i} - ${name}")
	}

	// ==================================== //

	mut numbers2 := [1,2,3,4,5]

	for mut num in numbers2 {
		num++
	}

	println(numbers2)

	// ==================================== //

	
}