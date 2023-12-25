
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