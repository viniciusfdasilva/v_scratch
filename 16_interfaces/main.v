struct Dog{
	breed string
}

fn (d Dog) speak() string{
	return 'woof'
}

struct Cat{
	breed string
}

fn (c Cat) speak() string{
	return 'meow'
}

interface Speaker{
	breed string
	speak() string
}

fn main(){
	dog := Dog{'Leonberger'}
	cat := Cat{'Siamese'}

	mut arr := []Speaker{}

	arr << dog
	arr << cat

	for item in arr{
		println('a ${item.breed} says: ${item.speak()}')
	}
}