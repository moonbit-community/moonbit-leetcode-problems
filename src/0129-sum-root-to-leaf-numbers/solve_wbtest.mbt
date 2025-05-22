///|
test "example 1" {
  let root1 : TreeNode = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty))
  assert_eq!(sum_numbers(root1), 25)
}

///|
test "example 2" {
  let root2 : TreeNode = Node(
    4,
    Node(9, Node(5, Empty, Empty), Node(1, Empty, Empty)),
    Node(0, Empty, Empty),
  )
  assert_eq!(sum_numbers(root2), 1026)
}
