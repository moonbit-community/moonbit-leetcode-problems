///|
test "is_symmetric - example 1" {
  let left_child = TreeNode::Node(
    2,
    TreeNode::Node(3, Empty, Empty),
    TreeNode::Node(4, Empty, Empty),
  )
  let right_child = TreeNode::Node(
    2,
    TreeNode::Node(4, Empty, Empty),
    TreeNode::Node(3, Empty, Empty),
  )
  let root = TreeNode::Node(1, left_child, right_child)
  assert_eq(is_symmetric(root), true)
}

///|
test "is_symmetric - example 2" {
  let left_child = TreeNode::Node(2, Empty, TreeNode::Node(3, Empty, Empty))
  let right_child = TreeNode::Node(2, Empty, TreeNode::Node(3, Empty, Empty))
  let root = TreeNode::Node(1, left_child, right_child)
  assert_eq(is_symmetric(root), false)
}

///|
test "is_symmetric - example 3" {
  let root = TreeNode::Empty
  assert_eq(is_symmetric(root), true)
}
