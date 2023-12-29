struct Foo{
	m int @[required]
	n string
}

pub fn main(){
	mut a := Foo{1, ''}
	assert a.m == 1

	_ := Foo{1,'Test'}

}