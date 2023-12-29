struct User{
	name string
	age int
	is_registered bool
}

fn register(u User) User{
	return User{
		...u
		is_registered: true
	}
}

pub fn main(){
	mut user := User{
		name: 'abc'
		age: 23
	}

	user = register(user)
	println(user)
}