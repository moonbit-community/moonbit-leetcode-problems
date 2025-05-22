enum TreeNode {
  Leaf
  Node(Int, TreeNode, TreeNode)
} derive(Eq, Show)

fn search_bst(root : TreeNode, val : Int) -> TreeNode {
  match root {
    Leaf => Leaf
    Node(v, left, right) =>
      if v == val {
        root
      } else if val < v {
        search_bst(left, val)
      } else {
        search_bst(right, val)
      }
  }
}
