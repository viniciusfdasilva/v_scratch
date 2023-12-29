struct Foo{
	n int // Default is 0
	s string // Default is ''
	a []int // Default is []int{}
	pos int = -1 // Default is -1
}

pub fn main(){
	mut f := Foo{1,'Test', [12,3,5,3,6], -2}
	println(f)
}