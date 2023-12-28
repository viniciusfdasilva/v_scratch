pub fn main()
{
	mut a := [][]int{len: 2, init: []int{len: 3}}
	a[0][1] = 2
	println(a)

	mut a1 := [][][]int{len: 3, init: [][]int{len: 3, init: []int{len: 3}}}
	println(a1)

	a1[0][1][1] = 2
	println(a1)

	nums := [1,2,3]
	nums_copy := nums.clone()
	println(nums_copy)

	nums1 := [1,2,3,4,5,6]

	even := nums1.filter(it % 2 == 0)
	println(even)

	even_fn := nums1.filter(fn (x int) bool{
		return x % 3 == 0
	})

	println(even_fn)

	words := ['hello','world'] 
	upper := words.map(it.to_upper())
	println(upper)

	upper_fn := words.map(fn (w string) string{
		return w.to_upper()
	})

	println(upper_fn)

	nums2 := [1,2,3]
	println(nums2.any(it == 2))
	println(nums2.all(it >= 2))

	mut numbers1 := [1,2,3]
	numbers1.sort()
	numbers1.sort(a > b)


	mut users := [User{21, 'Bob'}, User{65, 'Zarkon'}, User{25, 'Alice'}]
	users.sort(a.age < b.age)
	users.sort(a.name > b.name)

	custom_sort_fn := fn(a &User, b &User) int
	{
		if a.name == b.name {
			if a.age < b.age {
				return 1
			}
			if a.age > b.age {
				return -1
			}

			return 0
		}
		if a.name < b.name {
			return -1
		}else{
			return 1
		}

		return 0
	}

	users.sort_with_compare(custom_sort_fn)

	nums3 := [0,10,20,30,40]
	
	println(nums3[1..4])
	println(nums3[..4])
	println(nums3[1..])

	array_1 := [3,5,4,7,6]
	mut array_2 := [0,1]
	array_2 << array_1[..3]

	println(array_2)

	// ========================================================== //

	mut a4 := [0,1,2,3,4,5]
	mut b4 := a4[2..4].clone()
	b4[0] = 7
	println(a4)
	b4 << 9
	println(a4)
	println(b4)

	// ========================================================== //

	mut a5 := []int{len: 5, cap: 6, init: 2}
	mut b5 := unsafe{ a5[1..4] }
	a5 << 3
	b5[2] = 13
	a5 << 4
	b5[1] = 3
	println(a5)
	println(b5)

	// ========================================================== //

	mut a6 := [0,1,2,3,4,5]
	mut b6 := a6[2..4].clone()
	b6[0] = 7

	println(a6)
	println(b6)

	// ========================================================== //

	a8 := [0,1,2,3,4,5,6,7,8,9]
	println(a8#[-3..])
	println(a8#[-20..])
	println(a8#[-20..-8])
	println(a8#[..-3])

	println(a8#[-20..-10])
	println(a8#[20..10])
	println(a8#[20..30])

	// ========================================================== //

	files := ['pipoo.png', '01.bmp', '_v.txt', 'img_02.jpg', 'img_01.JPG']
	filtered := files.filter(it#[-4..].to_lower() == '.jpg').map(it.to_upper())
	println(filtered)

	mut fnums := [3]int{}

	fnums[0] = 1
	fnums[1] = 10
	fnums[2] = 100

	println(fnums)
	println(typeof(fnums).name)

	fnums1 := [1,10,100]!
	anums := fnums[..]
	
	println(anums)
	println(typeof(anums).name)

}	

struct User{
	age int
	name string
}

