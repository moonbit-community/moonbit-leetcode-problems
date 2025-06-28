///|
test "example 1" {
  let root : TreeNode = Node(
    1,
    None,
    Some(Node(2, Some(Node(3, None, None)), None)),
  )
  @json.inspect(postorder_traversal(Some(root)), content=[1, 2, 3])
}

///|
test "example 2" {
  assert_eq(postorder_traversal(None), [])
}

///|
test "example 3" {
  let root : TreeNode = Node(
    1,
    Some(Node(2, None, None)),
    Some(Node(3, None, None)),
  )
  @json.inspect(postorder_traversal(Some(root)), content=[1, 2, 3])
}

///|
test "example 4" {
  let root : TreeNode = Node(
    1,
    Some(Node(2, Some(Node(3, None, None)), Some(Node(4, None, None)))),
    Some(Node(5, None, Some(Node(6, None, None)))),
  )
  @json.inspect(postorder_traversal(Some(root)), content=[3, 4, 2, 6, 5, 1])
}
