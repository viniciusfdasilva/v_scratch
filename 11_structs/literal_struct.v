
struct Point{
	x int
	y int
}

pub fn main(){
	mut p  := Point{x: 10, y: 20}

	assert p.x == 10

	mut p1 := Point{x: 30, y: 4} 

	assert p1.y == 4
	point := [Point{x: 10, y: 20},Point{x: 20, y: 30},Point{x: 30, y: 40}]
	println(point)
}