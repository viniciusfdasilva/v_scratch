
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

	nums := [1,2,3,4,5]
	iter := SquareIterator {
		arr : nums
	}

	for squared in iter {
		println(squared)
	}

	// ==================================== //

	m := {
		'one' : 1,
		'two' : 2
	}

	for key, value in m {
		println('${key} -> ${value}')
	}

	// ==================================== //

	for key, _ in m {
		println("${key}")
	}

	for _, value in m {
		println("${value}")
	}

	// ==================================== //

	for i in 0..5 {
		print('${i} ')
	}

	// ==================================== //

	mut sum := 0
	mut i := 0

	for i <= 100 {
		sum += i
		i++
	}

	println(sum)

	// ==================================== //
}


struct SquareIterator {
	arr []int


mut:
	idx int
}

fn (mut iter SquareIterator) next() ?int{
	if iter.idx >= iter.arr.len {
		return none
	}else {
		defer {
			iter.idx++
		}
		return iter.arr[iter.idx]
	}
}

//fn (mut iter SquareIterator) next() ?int {
//	if iter.idx >= iter.arr.len {
//		return none
//	}
//	defer {
//		iter.idx++
//	}
//
//	return iter.arr[iter.idx] * iter.arr[iter.idx]
//}