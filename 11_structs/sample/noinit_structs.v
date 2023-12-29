import sample

fn main(){
	//mut into1 := sample.Information{data: 'Sample'}
	//println(into1)
	info := sample.new_information('Sample information')!
	println(info)
}