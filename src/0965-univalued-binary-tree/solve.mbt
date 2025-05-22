///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn is_unival_tree(root : TreeNode) -> Bool {
  match root {
    Empty => true
    Node(val, _, _) => dfs(root, val)
  }
}

///|
fn dfs(root : TreeNode, val : Int) -> Bool {
  match root {
    Empty => true
    Node(node_val, left, right) =>
      node_val == val && dfs(left, val) && dfs(right, val)
  }
}
