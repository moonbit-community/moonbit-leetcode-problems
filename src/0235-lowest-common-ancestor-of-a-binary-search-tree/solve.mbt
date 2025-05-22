enum Tree {
  Empty
  Node(Tree, Int, Tree)
}

fn lowest_common_ancestor(root : Tree, p : Int, q : Int) -> Tree {
  match root {
    Empty => Empty
    Node(left, val, right) =>
      if val > p && val > q {
        lowest_common_ancestor(left, p, q)
      } else if val < p && val < q {
        lowest_common_ancestor(right, p, q)
      } else {
        root
      }
  }
}

fn get_val(node : Tree) -> Int {
  match node {
    Empty => 0
    Node(_, val, _) => val
  }
}
