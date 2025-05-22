///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn is_symmetric(root : TreeNode) -> Bool {
  dfs(root, root)
}

///|
fn dfs(root1 : TreeNode, root2 : TreeNode) -> Bool {
  match (root1, root2) {
    (Empty, Empty) => true
    (Node(val1, left1, right1), Node(val2, left2, right2)) =>
      val1 == val2 && dfs(left1, right2) && dfs(right1, left2)
    _ => false
  }
}
