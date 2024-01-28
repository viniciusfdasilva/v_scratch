struct User{
	id int
	name string
}

struct Repo{
	users []User
}

fn (r Repo) find_user_by_id(id int) !User{
	for user in r.users {
		if user.id == id {
			return user
		}
	}
	return error('User ${id} not found')
}

fn (r Repo) find_user_by_id2(id int) ?User{
	for user in r.users {
		if user.id == id {
			return user
		}
	}
	return none
}

fn main(){
	repo := Repo{
		users: [User{1, 'Andrew'},
				User{2, 'Bob'},
				User{10, 'Charles'}
				]
	}

	user := repo.find_user_by_id(10) or {
		println(err)
		return
	}

	println(user.id)
	println(user.name)

	user2 := repo.find_user_by_id2(10) or { return }

	println(user2)
}