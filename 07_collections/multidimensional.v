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
		return w.upper()
	})

	println(upper_fn)

	nums2 := [1,2,3]
	println(num2.any(it == 2))
	println(num2.all(it >= 2))

	
}	