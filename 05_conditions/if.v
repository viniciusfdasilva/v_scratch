pub fn main() 
{
	mut a := 10
	mut b := 20

	// Simple if structure
	if a < b 
	{
		println("${a} é menor do que ${b}")
	}else if a > b
	{
		println("${a} é maior do que ${b}")
	}else
	{
		println("${a} é igual a ${b}")
	}

	num := 777

	s := if num % 2 == 0 { 'even' } else { 'odd' }
	println(s)


	// ================================================================ //

	m := {
		'foo' : 'bar'
	}

	if v := m['foo'] 
	{
		println(v)
	}else
	{
		println('not found')
	}

	if c := res() 
	{
		println(c)
	}

	// ================================================================ //

	mut arr := [User{"John"}]

	u_name := if v := arr[0]
	{
		v.name
	}else
	{
		"Unamed"
	}

	println(u_name)

	x := Alphabet(Abc{"Test"})

	if x is Abc 
	{
		println(x)
	}else if x !is Abc 
	{
		println("Not Abc")
	}

}

type Alphabet = Abc | Xyz

struct Abc 
{
	val string
}

struct Xyz 
{
	foo string
}

struct User {
	name string
}

fn res() !int 
{
	return 42
}