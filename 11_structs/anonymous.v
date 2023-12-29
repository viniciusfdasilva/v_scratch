struct Book{
	author struct {
		name string
		age int
	}

	title string
}


pub fn main(){
	book := Book{author: struct{name: 'Samantha Black', age: 23}, title: 'Livro'}

	assert book.author.name == 'Samantha Black'
	assert book.author.age == 23
	assert book.title == 'Livro'
}