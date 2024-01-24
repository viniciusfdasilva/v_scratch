struct Empty{}

struct Node{
	value f64
	left Tree
	right Tree
}

type Tree = Empty | Node

fn sum(tree Tree) f64{
	return match tree {
		Empty { 0 }
		Node { tree.value + sum(tree.left) + sum(tree.right)}
	}
}

fn main(){
	left := Node{0.2,Empty{}, Empty{}}
	right := Node{0.3, Empty{}, Node{0.4, Empty{},Empty{},}}
	tree := Node{0.5, left, right}

	println(sum(tree))
}