struct Moon{}

struct Mars{}

struct Venus{}

type World = Mars | Moon | Venus

fn (m Mars) dust_storm() bool {
	return true
}

fn main(){
	mut w := World(Moon{})

	assert w is Moon
	w = Mars{}

	mars := w as Mars
	
	if mars.dust_storm(){
		println('bad weather!')
	}

	//w1 := World(Mars{})

	if mut w is Mars{
		assert typeof(w).name == typeof(Mars{}).name
		
		if w.dust_storm(){
			println('bad weather!')
		}
	}
}