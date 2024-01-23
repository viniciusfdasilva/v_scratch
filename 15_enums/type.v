
type String = string

fn (s String) my_upper() string {
	return s.to_upper()
}

fn main(){

	mut str := String('abc')
	println(str.my_upper())
}