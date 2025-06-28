///|
test "example 1" {
  let root : Tree = Node(
    Node(Node(Empty, 1, Empty), 2, Node(Empty, 3, Empty)),
    4,
    Node(Node(Empty, 6, Empty), 7, Node(Empty, 9, Empty)),
  )
  let inverted : Tree = invert_tree(root)
  assert_eq(
    inverted,
    Node(
      Node(Node(Empty, 9, Empty), 7, Node(Empty, 6, Empty)),
      4,
      Node(Node(Empty, 3, Empty), 2, Node(Empty, 1, Empty)),
    ),
  )
}

///|
test "example 2" {
  let root : Tree = Node(Node(Empty, 1, Empty), 2, Node(Empty, 3, Empty))
  let inverted : Tree = invert_tree(root)
  assert_eq(inverted, Node(Node(Empty, 3, Empty), 2, Node(Empty, 1, Empty)))
}
