struct Moon{}

struct Mars{}

struct Venus{}

type World = Mars | Moon | Venus

fn open_parachutes(n int){
	println(n)
}

fn land(w World){
	match w {
		Moon{}
		Mars{
			open_parachutes(3)
		}
		Venus{
			open_parachutes(1)
		}
	}
}


fn (m Moon) moon_walk(){}
fn(m Mars) shiver(){}
fn(v Venus) sweat(){}

fn pass_time(w World){
	match w{
		Moon { w.moon_walk() }
		Mars { w.shiver()    }
		else {}
	}
}

fn main(){
	
	mut world := World(Mars{})
	
	land(world)
	pass_time(world)
}