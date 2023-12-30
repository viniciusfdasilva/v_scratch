struct Rgba32_Component{
	r u8
	g u8
	b u8
	a u8
}

union Rgba32{
	Rgba32_Component
	mut:
		value u32
}

pub fn main(){
	
	clr1 := Rgba32{
		value: 0x008811FF
	}

	clr2 := Rgba32{
		Rgba32_Component: Rgba32_Component{
			a: 128
		}
	}

	white := Rgba32{
		Rgba32_Component : Rgba32_Component{
			r: 255
			g: 255
			b: 255
		}
	}

	sz := sizeof(Rgba32)

	unsafe{ 
		println('Size: ${sz}B,clr1.b: ${clr1.b},clr2.b: ${clr2.b}')
		white.value = 0xFFFFF
		println("RED ${white.r} | GREEN ${white.g} | BLUE ${white.b} | VALUE ${white.value}")
	}
}