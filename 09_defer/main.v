import os

pub fn main(){
	
	ok := false
	mut f := os.open('log.txt') or { panic('File cannot be read!') }
	defer{
		f.close()
	}

	if !ok{
		return
	}


}