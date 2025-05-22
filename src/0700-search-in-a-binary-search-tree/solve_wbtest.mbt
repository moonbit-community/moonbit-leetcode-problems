///|
test "example 1" {
  let root = TreeNode::Node(
    4,
    TreeNode::Node(
      2,
      TreeNode::Node(1, Leaf, Leaf),
      TreeNode::Node(3, Leaf, Leaf),
    ),
    TreeNode::Node(7, Leaf, Leaf),
  )
  assert_eq!(
    search_bst(root, 2),
    TreeNode::Node(
      2,
      TreeNode::Node(1, Leaf, Leaf),
      TreeNode::Node(3, Leaf, Leaf),
    ),
  )
}

///|
test "example 2" {
  let root = TreeNode::Node(
    4,
    TreeNode::Node(
      2,
      TreeNode::Node(1, Leaf, Leaf),
      TreeNode::Node(3, Leaf, Leaf),
    ),
    TreeNode::Node(7, Leaf, Leaf),
  )
  assert_eq!(search_bst(root, 5), Leaf)
}

///|
test "example 3" {
  let root = TreeNode::Leaf
  assert_eq!(search_bst(root, 1), Leaf)
}
