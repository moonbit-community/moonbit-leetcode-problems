enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

fn is_same_tree(p : TreeNode, q : TreeNode) -> Bool {
  match (p, q) {
    (Empty, Empty) => true
    (Node(val1, left1, right1), Node(val2, left2, right2)) =>
      val1 == val2 && is_same_tree(left1, left2) && is_same_tree(right1, right2)
    _ => false
  }
}
