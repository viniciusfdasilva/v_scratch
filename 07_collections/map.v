pub fn main()
{
	
	mut m := map[string]int{}

	m['one'] = 1
	m['two'] = 2

	println(m['one'])
	println(m['two'])
	println(m['bad_key'])
	println('bad_key' in m)
	println(m.keys())

	m.delete('two')

	numbers := {
		'one' : 1
		'two' : 2
	}

	println(numbers)

	// ====================================================== //

	sm := {
		'abc' : 'xyz'
	}	

	val := sm['bad_key']
	println(val)

	intm := {
		1: 1234
		2: 5678
	}

	s := intm[3]
	println(s)

	// ====================================================== //

	mm := map[string]int{}
	val3 := mm['bad_key'] or { panic('key not found') }
	println(val3)
	m1 := {
		'abc' : 'def'
	}

	if v := m1['abc']{
		println('the map value for that key is ${v}')
	}

	// ====================================================== //

	arr := [1,2,3]
	large_index := 999
	val6 := arr[large_index] or { panic('out of bounds') }
	println(val6)

	val2 := arr[333]!
	println(val2)

	// ====================================================== //

	mut m2 := map[string]map[string]int{}

	m2['greet'] = {
		'Hello' : 1
	}

	m2['place'] = {
		'World' : 2
	}

	m2['code']['orange'] = 123
	println(m2)

}