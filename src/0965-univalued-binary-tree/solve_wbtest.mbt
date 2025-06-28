///|
test "unival tree true" {
  let tree = TreeNode::Node(1, Node(1, Empty, Empty), Node(1, Empty, Empty))
  assert_eq(is_unival_tree(tree), true)
}

///|
test "unival tree false" {
  let tree = TreeNode::Node(1, Node(1, Empty, Empty), Node(2, Empty, Empty))
  assert_eq(is_unival_tree(tree), false)
}
