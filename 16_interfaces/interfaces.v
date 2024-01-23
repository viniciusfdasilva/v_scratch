

interface Foo{
	write(string) string
}

interface Bar{
mut:
	write(string) string
}

struct MyStruct{}

fn (s MyStruct) write(a string) string{
	return a
}

fn main(){
	s1 := MyStruct{}

	fn1(s1)
}

fn fn1(s Foo){
	println(s.write('Foo'))
}