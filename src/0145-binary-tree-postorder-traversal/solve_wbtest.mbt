test "example 1" {
  let root : TreeNode = Node(1, Empty, Node(2, Empty, Node(3, Empty, Empty)))
  let expected : @immut/list.T[Int] = Cons(3, Cons(2, Cons(1, Nil)))
  assert_eq!(postorder_traversal(root), expected)
}

test "example 2" {
  let root : TreeNode = Node(
    1,
    Node(2, Node(3, Empty, Empty), Node(4, Empty, Empty)),
    Node(5, Empty, Node(6, Empty, Empty)),
  )
  let expected : @immut/list.T[Int] = Cons(
    3,
    Cons(4, Cons(2, Cons(6, Cons(5, Cons(1, Nil))))),
  )
  assert_eq!(postorder_traversal(root), expected)
}

test "example 3" {
  let root : TreeNode = Empty
  let expected : @immut/list.T[Int] = Nil
  assert_eq!(postorder_traversal(root), expected)
}
