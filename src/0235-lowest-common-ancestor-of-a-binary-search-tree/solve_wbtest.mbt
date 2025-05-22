///|
test "example 1" {
  let root : Tree = Node(
    Node(
      Node(Empty, 0, Empty),
      2,
      Node(Node(Empty, 3, Empty), 4, Node(Empty, 5, Empty)),
    ),
    6,
    Node(Node(Empty, 7, Empty), 8, Node(Empty, 9, Empty)),
  )
  let p = 2
  let q = 8
  let ancestor = lowest_common_ancestor(root, p, q)
  assert_eq!(get_val(ancestor), 6)
}

///|
test "example 2" {
  let root : Tree = Node(
    Node(
      Node(Empty, 0, Empty),
      2,
      Node(Node(Empty, 3, Empty), 4, Node(Empty, 5, Empty)),
    ),
    6,
    Node(Node(Empty, 7, Empty), 8, Node(Empty, 9, Empty)),
  )
  let p = 2
  let q = 4
  let ancestor = lowest_common_ancestor(root, p, q)
  assert_eq!(get_val(ancestor), 2)
}
