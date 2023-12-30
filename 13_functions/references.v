struct Foo{
	abc int
}

fn (foo Foo) bar_method(){}

fn (foo &Foo) bar(){
	println(foo.abc)
} 

fn bar_function(foo Foo){}


struct Node[T]{
	val   T
	left  &Node[T]
	right &Node[T]
}

pub fn main(){

}