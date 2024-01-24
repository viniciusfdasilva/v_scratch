pub interface Reader{
mut:
	read(mut buf []u8) ?int
}

pub interface Write{
mut:
	write(buf []u8) ?int
}

pub interface ReaderWriter{
	Reader
	Write
}


struct Moon{}
struct Mars{}
struct Venus{}

type World = Mars | Moon | Venus

fn main(){

	sum := World(Moon{})
	assert sum.type_name() == 'Moon'
	println(sum)
	
}