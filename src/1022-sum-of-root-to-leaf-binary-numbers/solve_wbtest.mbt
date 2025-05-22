///|
test "example 1" {
  let left_child = TreeNode::Node(
    0,
    TreeNode::Node(0, Empty, Empty),
    TreeNode::Node(1, Empty, Empty),
  )
  let right_child = TreeNode::Node(
    1,
    TreeNode::Node(0, Empty, Empty),
    TreeNode::Node(1, Empty, Empty),
  )
  let root = TreeNode::Node(1, left_child, right_child)
  assert_eq!(sum_root_to_leaf(root), 22)
}

///|
test "example 2" {
  let root = TreeNode::Node(0, Empty, Empty)
  assert_eq!(sum_root_to_leaf(root), 0)
}
