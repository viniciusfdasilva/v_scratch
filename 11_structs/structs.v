
struct Point{
	x int
	y int
}

pub fn main(){
	mut p := Point{x: 10, y: 20}
	println('${p.x} | ${p.y}')


	p1 := Point{10, 20}
	assert p1.x == 10
}

