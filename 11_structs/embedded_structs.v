struct Size{
mut:
	width int
	height int
}

fn (s &Size) area() int{
	return s.width * s.height
}

struct Button{
	Size
	title string
}

pub fn main(){
	mut button := Button{title: 'Click me', height: 2}
	button.width = 3

	assert button.area() == 6
	assert button.Size.area() == 6
	println(button)

	mut button1 := Button{Size: Size{
		width : 34
		height: 10
	}}

	println(button1)

	button1.Size = Size{width: 2, height: 9}
	println(button1)
}