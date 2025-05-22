test "example 1" {
  let tree : Tree = Node(Empty, 1, Empty)
  assert_eq!(max_depth(tree), 1)
}
