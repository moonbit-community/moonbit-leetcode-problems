///|
test "example 1" {
  let root = TreeNode::Node(
    0,
    TreeNode::Node(
      0,
      TreeNode::Empty,
      TreeNode::Node(0, TreeNode::Node(0, Empty, Empty), Empty),
    ),
    Empty,
  )
  assert_eq!(min_camera_cover(root), 1)
}

///|
test "example 2" {
  let root = TreeNode::Empty
  assert_eq!(min_camera_cover(root), 0)
}
