pub fn main()
{
	rocket := `🚀`
	assert rocket.str() == '🚀'
	println(rocket)

	assert rocket.bytes() == [u8(0xf0),0x9f, 0x9a,0x80]

	assert `\x61`   == `a`
	assert `\x141`  == `a`
	assert `\x0061` == `a`

	rocket_string := '🚀'
	assert rocket_string[0] != `🚀`
	assert 'aloha!'[0] == `a`

	hello := 'Hello World 👋'
	hello_runes := hello.runes()
	assert hello_runes.string() == hello

}