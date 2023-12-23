pub fn main() 
{
	os := 'win32'

	match os {
		'darwin' { println('macos') }
		'linux'  { println('Linux') }
		'win32'  { println('Windows') }
		else     { println('Unknown operatin system') }
	}

	// =========================================================== //

	match true {
		2 == 3 { println('true') }
		2 % 4 == 0 { println('true') }
		2 > 4 { println('true') }
		else { println('false') }
	}

	match false {
		2 == 3 { println('false') }
		2 % 4 == 0 { println('false') }
		2 > 4 { println('false') }
		else { println('false') }
	}

	// =========================================================== //

	mut color := Color.red
	println(is_red_or_blue(color))

	// =========================================================== //

	c := `v`

	typ := match c {
		`0`...`9` { "digit" }
		`A`...`Z` { "uppercase" }
		`a`...`z` { "lowercase" }
		else { "other" }
	}

	println(typ)

	// =========================================================== //

	d := 2

	num := match d {
		start...end { 1000 }
		else { 0 }
	}

	println(num)
}

const start := 1
const end := 10

fn is_red_or_blue(c Color) bool
{
	return match c {
		.red, .blue { true }
		.green { false }
	}
}

enum Color {
	blue
	red 
	green
}