pub fn main()
{
	mut nums := [1,2,3]

	println(nums)
	println(nums[0])
	println(nums[1])

	nums[1] = 5
	println(nums)

	// ===================================== //

	nums << 4
	println(nums)

	mut names := ['John']
	names << 'Peter'
	names << 'Sam'
	println(names)

	names1 := ['John', 'Peter', 'Sam']
	println('Alex' in names1)

	// ===================================== //

	mut nums1 := [1,2,3]
	println('len ${nums1.len}')
	println('cap ${nums1.cap}')

	nums1 = []

	println('len ${nums1.len}')
	println('cap ${nums1.cap}')

	// ===================================== //

	mut a := []int{len: 10000, cap: 30000, init: 3}

	println(a[0])

	// ===================================== //

	arr := []int{len: 5, init: -1} // [-1,-1,-1,-1,-1]
	users := []int{} // Empty

	assert arr.len == 5
	assert users == []

	mut numbers := []int{cap: 1000}

	println(numbers.len)

	for i in 0 .. 1000 {
		numbers << i
	}

	// ===================================== //

	count := []int{len: 4, init: index}
	assert count == [0,1,2,3]
	mut square := []int{len: 6, init: index * index}
	assert square[2] == 4

	mut object_list := []ObjectSumType{}
	object_list << Point{1,1}
	object_list << Line{
			p1 : Point{3,3}
			p2 : Point{4,4}
	}

	dump(object_list)

}

type ObjectSumType = Line | Point

struct Point{
	x int
	y int
}

struct Line{
	p1 Point
	p2 Point
}
