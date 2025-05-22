enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

fn sum_numbers(root : TreeNode) -> Int {
  dfs(root, 0)
}

fn dfs(root : TreeNode, s : Int) -> Int {
  match root {
    Empty => 0
    Node(val, left, right) => {
      let s = s * 10 + val
      match (left, right) {
        (Empty, Empty) => s
        _ => dfs(left, s) + dfs(right, s)
      }
    }
  }
}
