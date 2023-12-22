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
	
}