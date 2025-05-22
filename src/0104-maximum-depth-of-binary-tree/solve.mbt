enum Tree {
  Empty
  Node(Tree, Int, Tree)
}

fn max(l : Int, r : Int) -> Int {
  if l > r {
    return l
  }
  r
}

fn max_depth(root : Tree) -> Int {
  match root {
    Empty => 0
    Node(left, _, right) => 1 + max(max_depth(left), max_depth(right))
  }
}
