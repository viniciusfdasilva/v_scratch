struct User{
	name string
mut:
	is_registered bool
}

fn (mut user User) register(){
	user.is_registered = true
}


fn multiply_by_2(mut arr[] int){
	for i in 0..arr.len{
		arr[i] *= 2
	}
}

pub fn main(){
	
	mut user := User{}
	
	println(user.is_registered)
	user.register()
	println(user.is_registered)

	mut nums := [1,2,3]
	multiply_by_2(mut nums)
	println(nums)
	
}