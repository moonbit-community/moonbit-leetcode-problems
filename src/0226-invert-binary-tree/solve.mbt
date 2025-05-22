enum Tree {
  Empty
  Node(Tree, Int, Tree)
} derive(Eq, Show)

fn invert_tree(root : Tree) -> Tree {
  fn dfs(node : Tree) -> Tree {
    match node {
      Empty => Empty
      Node(left, val, right) => Node(dfs(right), val, dfs(left))
    }
  }

  dfs(root)
}
