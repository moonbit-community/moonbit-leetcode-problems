///|
test "example 1" {
  let root = TreeNode::Node(
    4,
    Node(2, Node(1, Empty, Empty), Node(3, Empty, Empty)),
    Node(7, Empty, Empty),
  )
  let expected = TreeNode::Node(
    4,
    Node(2, Node(1, Empty, Empty), Node(3, Empty, Empty)),
    Node(7, Node(5, Empty, Empty), Empty),
  )
  assert_eq!(root.insert(5), expected)
}

///|
test "example 2" {
  let root = TreeNode::Node(
    40,
    Node(20, Node(10, Empty, Empty), Node(30, Empty, Empty)),
    Node(60, Node(50, Empty, Empty), Node(70, Empty, Empty)),
  )
  let expected = TreeNode::Node(
    40,
    Node(20, Node(10, Empty, Empty), Node(30, Node(25, Empty, Empty), Empty)),
    Node(60, Node(50, Empty, Empty), Node(70, Empty, Empty)),
  )
  assert_eq!(root.insert(25), expected)
}

///|
test "example 3" {
  let root = TreeNode::Empty
  let expected = TreeNode::Node(5, Empty, Empty)
  assert_eq!(root.insert(5), expected)
}
