interface Adoptable{}

fn (a Adoptable) speak() string {
	return 'adopt me!'
}

struct Cat{}

fn (c Cat) speak() string{
	return 'meow!'
}

struct Dog{}

fn main(){
	cat := Cat{}

	assert dump(cat.speak()) == 'meow!'

	a := Adoptable(cat)

	assert dump(a.speak()) == 'adopt me!'

	if a is Cat{
		dump(a.speak())
	}

	b := Adoptable(Dog{})
	assert dump(b.speak()) == 'adopt me!'

	//if b is Dog{
	//	dump(b.speak())
	//}
}