import math

const pi = math.pi

pub fn main() 
{

	// Por padrão os valores são criados como imutável
	immutable := pi
	println('${immutable}')

	// Para se tornar variável basta inserir a palavra reservada 'mut'
	mut mutable := 23.2
	print('${mutable}\n')
	
	mutable = pi

	print('${mutable}\n')

	a, c, d := 3, 2, 5

	mut i, mut j := 'Hi', 'Hello'

	println("${a} ${c} ${d}")
	println("${i} ${j}")

	mut greet := 'Here'

	greet = greet + ' there and Everywhere'

	println("${greet}")

	greet += ' Hope yout have a great day!'

	println("${greet}")

	mut is_false := false
	mut is_true  := true

	println(is_false)
	println(is_true)

}