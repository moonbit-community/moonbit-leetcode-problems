///|
test "example 1" {
  let root : TreeNode = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty)) // Added type annotation for Node and Empty
  assert_eq(max_path_sum(root), 6)
}

///|
test "example 2" {
  let root : TreeNode = Node(
    -10,
    Node(9, Empty, Empty),
    Node(20, Node(15, Empty, Empty), Node(7, Empty, Empty)),
  ) // Added type annotation for Node and Empty
  assert_eq(max_path_sum(root), 42)
}

///|
test "example 3" {
  let root : TreeNode = Empty // Added type annotation for Empty
  assert_eq(max_path_sum(root), -1001)
}
