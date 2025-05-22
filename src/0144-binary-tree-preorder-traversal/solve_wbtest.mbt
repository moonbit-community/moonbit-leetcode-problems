///|
test "example 1" {
  let root : TreeNode = Node(1, Empty, Node(2, Node(3, Empty, Empty), Empty))
  assert_eq!(preorder_traversal(root), Cons(1, Cons(2, Cons(3, Nil))))
}

///|
test "example 2" {
  let root : TreeNode = Empty
  assert_eq!(preorder_traversal(root), Nil)
}

///|
test "example 3" {
  let root : TreeNode = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty))
  assert_eq!(preorder_traversal(root), Cons(1, Cons(2, Cons(3, Nil))))
}
