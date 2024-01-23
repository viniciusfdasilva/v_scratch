enum Color as u8 {
	@none
	red
	green
	blue
}


enum Grocery{
	apple
	orange = 5
	pear
}


enum Cycle{
	one 
	two
	three
}


fn (c Cycle) next() Cycle{

	match c {
		.one {
			return .two
		}

		.two {
			return .three
		}

		.three {
			return .one
		}
	}
}


fn main(){
	mut color := Color.red

	color = .green
	println(color)

	match color {
		.red { println('The color was red') }
		.green { println('The color was green')}
		.blue { println('The color was blue ')}
		else { println('The value is none')}
	}

	color = Color.@none
	println(color)


	g1 := int(Grocery.apple)
	g2 := int(Grocery.orange)
	g3 := int(Grocery.pear)

	println('Grocery ids ${g1}, ${g2}, ${g3}')


	mut c := Cycle.one

	for _ in 0..10 {
		println(c)
		c = c.next()
	}

}