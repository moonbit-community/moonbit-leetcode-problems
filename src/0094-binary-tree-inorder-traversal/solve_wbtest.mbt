test "inorder" {
  let t = Tree::Node(Empty, 1, Node(Node(Empty, 3, Empty), 2, Empty))
  let res = inorder(t)
  assert_eq!(res, [1, 3, 2])
}
