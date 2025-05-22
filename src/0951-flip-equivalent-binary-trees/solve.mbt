///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq)

///|
fn flip_equiv(root1 : TreeNode, root2 : TreeNode) -> Bool {
  match (root1, root2) {
    (Empty, Empty) => true
    (Node(val1, left1, right1), Node(val2, left2, right2)) =>
      if val1 != val2 {
        false
      } else {
        (flip_equiv(left1, left2) && flip_equiv(right1, right2)) ||
        (flip_equiv(left1, right2) && flip_equiv(right1, left2))
      }
    _ => false
  }
}
