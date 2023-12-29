struct User{
	age int
}

fn (u User) can_register() bool{
	return u.age > 16
}

pub fn main(){
	
	user1 := User{age: 10}

	println(user1.can_register())

	user2 := User{age: 20}

	println(user2.can_register())
}