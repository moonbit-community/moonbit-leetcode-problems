///|
test "example 1" {
  let root : TreeNode = Node(
    1,
    Node(2, Node(4, Empty, Empty), Node(5, Empty, Empty)),
    Node(3, Empty, Empty),
  )
  let expected : TreeNode = Node(
    2,
    Node(4, Empty, Empty),
    Node(5, Empty, Empty),
  )
  assert_eq(lca_deepest_leaves(root), expected)
}

///|
test "example 2" {
  let root : TreeNode = Node(
    1,
    Node(2, Empty, Node(4, Node(6, Empty, Empty), Empty)),
    Node(3, Empty, Node(5, Empty, Node(7, Empty, Empty))),
  )
  let expected : TreeNode = Node(
    1,
    Node(2, Empty, Node(4, Node(6, Empty, Empty), Empty)),
    Node(3, Empty, Node(5, Empty, Node(7, Empty, Empty))),
  )
  assert_eq(lca_deepest_leaves(root), expected)
}
