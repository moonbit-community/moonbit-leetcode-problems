///|
test "example 1" {
  let root = TreeNode::Node(
    10,
    TreeNode::Node(
      5,
      TreeNode::Node(3, Empty, Empty),
      TreeNode::Node(7, Empty, Empty),
    ),
    TreeNode::Node(15, Empty, TreeNode::Node(18, Empty, Empty)),
  )
  assert_eq!(range_sum_bst(root, 7, 15), 32)
}

///|
test "example 2" {
  let root = TreeNode::Node(
    10,
    TreeNode::Node(
      5,
      TreeNode::Node(3, TreeNode::Node(1, Empty, Empty), Empty),
      TreeNode::Node(7, TreeNode::Node(6, Empty, Empty), Empty),
    ),
    TreeNode::Node(
      15,
      TreeNode::Node(13, Empty, Empty),
      TreeNode::Node(18, Empty, Empty),
    ),
  )
  assert_eq!(range_sum_bst(root, 6, 10), 23)
}
