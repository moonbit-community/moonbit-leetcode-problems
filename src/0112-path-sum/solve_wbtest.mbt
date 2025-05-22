///|
test "example 1" {
  let root = TreeNode::Node(
    5,
    TreeNode::Node(
      4,
      TreeNode::Node(
        11,
        TreeNode::Node(7, Empty, Empty),
        TreeNode::Node(2, Empty, Empty),
      ),
      Empty,
    ),
    TreeNode::Node(
      8,
      TreeNode::Node(13, Empty, Empty),
      TreeNode::Node(4, Empty, TreeNode::Node(1, Empty, Empty)),
    ),
  )
  assert_eq!(has_path_sum(root, 22), true)
}

///|
test "example 2" {
  let root = TreeNode::Node(
    1,
    TreeNode::Node(2, Empty, Empty),
    TreeNode::Node(3, Empty, Empty),
  )
  assert_eq!(has_path_sum(root, 5), false)
}

///|
test "example 3" {
  let root = TreeNode::Empty
  assert_eq!(has_path_sum(root, 0), false)
}
