enum Color as u8{
	@none
	red
	green
	blue
}

pub fn main(){

	mut color := Color.red
	color = .green

	mut color1 := Color.@none

	println(color)

	match color {
		.red {
			println('the color was red')
		}

		.green {
			println('the color was green')
		}

		.blue {
			println('the color was blue')
		}

		else {
			println('color was not indentified')
		}
	}

	println(color1)
}