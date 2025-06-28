///|
test "example 1" {
  let root : TreeNode = Node(
    1,
    None,
    Some(Node(2, Some(Node(3, None, None)), None)),
  )
  @json.inspect(preorder_traversal(Some(root)), content=[1, 2, 3])
}

///|
test "example 2" {
  assert_eq(preorder_traversal(None), [])
}

///|
test "example 3" {
  let root : TreeNode = Node(
    1,
    Some(Node(2, None, None)),
    Some(Node(3, None, None)),
  )
  @json.inspect(preorder_traversal(Some(root)), content=[1, 2, 3])
}
