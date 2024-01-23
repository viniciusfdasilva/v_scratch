

type Filter = fn (string) string


fn filter(s string, f Filter) string{
	return f(s)
}

fn uppercase(s string) string{
	return s.to_upper()
}


type String = string


fn (s String) my_upper() string{
	return s.to_upper()
}

fn main(){

	res := filter('Teste', fn (s string) string {
		return s
	})

	println(res)

	println(uppercase('teste'))

	mut str := String('oi')
	println(str)
	println(str.my_upper())

	my_filter := Filter(uppercase)
	println(my_filter)
}