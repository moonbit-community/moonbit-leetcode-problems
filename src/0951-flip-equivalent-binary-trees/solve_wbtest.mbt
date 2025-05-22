///|
test "example 1" {
  let root1 = TreeNode::Node(
    1,
    TreeNode::Node(
      2,
      TreeNode::Empty,
      TreeNode::Node(4, TreeNode::Empty, TreeNode::Empty),
    ),
    TreeNode::Node(
      3,
      TreeNode::Node(5, TreeNode::Empty, TreeNode::Empty),
      TreeNode::Empty,
    ),
  )
  let root2 = TreeNode::Node(
    1,
    TreeNode::Node(
      3,
      TreeNode::Empty,
      TreeNode::Node(5, TreeNode::Empty, TreeNode::Empty),
    ),
    TreeNode::Node(
      2,
      TreeNode::Empty,
      TreeNode::Node(4, TreeNode::Empty, TreeNode::Empty),
    ),
  )
  assert_eq!(flip_equiv(root1, root2), true)
}

///|
test "example 2" {
  let root1 = TreeNode::Node(
    1,
    TreeNode::Node(
      2,
      TreeNode::Empty,
      TreeNode::Node(3, TreeNode::Empty, TreeNode::Empty),
    ),
    TreeNode::Empty,
  )
  let root2 = TreeNode::Node(
    1,
    TreeNode::Node(
      2,
      TreeNode::Node(3, TreeNode::Empty, TreeNode::Empty),
      TreeNode::Empty,
    ),
    TreeNode::Empty,
  )
  assert_eq!(flip_equiv(root1, root2), false)
}
