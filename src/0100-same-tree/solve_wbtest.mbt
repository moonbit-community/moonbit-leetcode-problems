///|
test "example 1" {
  let p = TreeNode::Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty))
  let q = TreeNode::Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty))
  assert_eq!(is_same_tree(p, q), true)
}

///|
test "example 2" {
  let p = TreeNode::Node(1, Node(2, Empty, Empty), Empty)
  let q = TreeNode::Node(1, Empty, Node(2, Empty, Empty))
  assert_eq!(is_same_tree(p, q), false)
}

///|
test "example 3" {
  let p = TreeNode::Node(1, Node(2, Empty, Empty), Node(1, Empty, Empty))
  let q = TreeNode::Node(1, Node(1, Empty, Empty), Node(2, Empty, Empty))
  assert_eq!(is_same_tree(p, q), false)
}
