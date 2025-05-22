///|
test "example 1" {
  let root = TreeNode::Node(
    3,
    TreeNode::Node(0, TreeNode::Empty, TreeNode::Empty),
    TreeNode::Node(
      0,
      TreeNode::Empty,
      TreeNode::Node(2, TreeNode::Empty, TreeNode::Empty),
    ),
  )
  assert_eq!(distribute_coins(root, 0), 3)
}

///|
test "example 2" {
  let root = TreeNode::Node(
    0,
    TreeNode::Node(3, TreeNode::Empty, TreeNode::Empty),
    TreeNode::Node(0, TreeNode::Empty, TreeNode::Empty),
  )
  assert_eq!(distribute_coins(root, 0), 2)
}

///|
test "example 3" {
  let root = TreeNode::Node(
    1,
    TreeNode::Node(
      0,
      TreeNode::Node(3, TreeNode::Empty, TreeNode::Empty),
      TreeNode::Empty,
    ),
    TreeNode::Node(0, TreeNode::Empty, TreeNode::Empty),
  )
  assert_eq!(distribute_coins(root, 0), 4)
}
