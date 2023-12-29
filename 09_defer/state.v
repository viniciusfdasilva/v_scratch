import os { create }

enum State{
	normal
	write_log
	return_error
}

fn write_log(state State) !int {
	mut f := create('log.txt')!
	
	defer { 
		f.close() 
		println('File closed')
	}

	match state{
		.normal{
			return f.writeln("This is a normal file")
		}

		.write_log {
			return f.writeln("This is a log file")
		}

		.return_error{
			return error('nothing written; file open: ${f.is_opened}')
		}
	} 
	return 0
}

pub fn main(){
	n := write_log(.write_log) or { 
		println('Error ${err}') 
		0
	}

	println('${n} bytes written')

}