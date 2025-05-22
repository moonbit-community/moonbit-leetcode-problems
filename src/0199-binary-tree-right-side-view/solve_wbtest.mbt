test "tests" {
  let root : TreeNode = Node(
    1,
    Node(2, Empty, Node(5, Empty, Empty)),
    Node(3, Empty, Node(4, Empty, Empty)),
  )
  let expected : @immut/list.T[Int] = Cons(1, Cons(3, Cons(4, Nil)))
  assert_eq!(right_side_view(root), expected)

  // Test example 2
  let root2 : TreeNode = Node(1, Node(2, Empty, Empty), Node(3, Empty, Empty))
  let expected2 : @immut/list.T[Int] = Cons(1, Cons(3, Nil))
  assert_eq!(right_side_view(root2), expected2)

  // Test example 3
  let root3 : TreeNode = Empty
  let expected3 : @immut/list.T[Int] = Nil
  assert_eq!(right_side_view(root3), expected3)
}
