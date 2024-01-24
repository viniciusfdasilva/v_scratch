

struct Dog{
	breed string
}

fn (d Dog) speak() string{
	return 'Woof'
}


struct Cat{
	breed string
}

fn (c Cat) speak() string{
	return 'Meow'
}

interface Something{}


fn announce(s Something){
	if s is Dog {
		println('a ${s.breed} dog')
	}else if s is Cat{
		println('a cat speaks ${s.speak()}')
	}else {
		println('something else')
	}
}

fn main(){
	dog := Dog{'Leonberger'}
	cat := Cat{'Siamese'}

	announce(dog)
	announce(cat)
}