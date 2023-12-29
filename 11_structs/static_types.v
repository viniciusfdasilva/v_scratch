
struct User{}

fn User.new() User{
	return User{}
}

pub fn main(){
	user := User.new()
	println(user)
}