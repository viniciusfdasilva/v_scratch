interface IFoo{
	foo()
}

interface IBar{
	bar()
}

struct SFoo{}

fn (sf SFoo) foo() {}


struct SFooBar {}

fn (sfb SFooBar) foo() {}


fn (sfb SFooBar) bar() {
	dump('This implements IBar')
}

fn main(){

	mut arr := []IFoo{}
	arr << SFoo{}
	arr << SFooBar{}

	for a in arr{
		dump(a)
	
		if a is IBar{
			a.bar()
		}
	}
}