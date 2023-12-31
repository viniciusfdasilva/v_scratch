
const pi    = 3.14
const e     = 2.71828
const world = '世界'

struct Color{
	r int
	g int
	b int
}

fn rgb(r int, g int, b int) Color
{
	return Color{
		r: r
		g: g
		b: b
	}
}

const numbers = [1,2,3]
const red = Color{
	r: 255
	g: 0
	b: 0
}

const blue = rgb(0,0, 255)

pub fn main(){

	println(pi)
	println(world)

	println(numbers)
	println(red)
	println(blue)

}