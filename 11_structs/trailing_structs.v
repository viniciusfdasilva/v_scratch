@[params]
struct ButtonConfig{
	text string = 'oi'
	is_disabled bool
	width int  = 70
	height int //= 20
}

struct Button{
	text string
	width int
	height int
}

fn new_button(c ButtonConfig) &Button{
	return &Button{
		width:  c.width
		height: c.height
		text:   c.text
	}
}

pub fn main(){
	button := new_button()
	assert button.height == 0
}