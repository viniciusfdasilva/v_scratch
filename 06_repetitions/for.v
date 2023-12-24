
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
}