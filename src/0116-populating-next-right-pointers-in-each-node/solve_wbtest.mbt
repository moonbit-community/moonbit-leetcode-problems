///|
test "example 1" {
  let tree = Tree::Node(
    1,
    Node(
      2,
      Node(4, Empty, Empty, Empty),
      Node(5, Empty, Empty, Empty),
      Node(3, Empty, Empty, Empty),
    ),
    Node(3, Node(6, Empty, Empty, Empty), Node(7, Empty, Empty, Empty), Empty),
    Empty,
  )
  let connected_tree = connect(tree)
  let expected_tree = Tree::Node(
    1,
    Node(
      2,
      Node(4, Empty, Empty, Node(5, Empty, Empty, Node(3, Empty, Empty, Empty))),
      Node(5, Empty, Empty, Node(3, Empty, Empty, Empty)),
      Node(3, Empty, Empty, Empty),
    ),
    Node(
      3,
      Node(6, Empty, Empty, Node(7, Empty, Empty, Empty)),
      Node(7, Empty, Empty, Empty),
      Empty,
    ),
    Empty,
  )
  assert_eq!(connected_tree, expected_tree)
}
