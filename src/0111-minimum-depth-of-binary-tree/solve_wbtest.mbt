///|
test "exmaple 1" {
  let leftChild : TreeNode = Node(2, Empty, Empty)
  let rightChild : TreeNode = Node(3, Empty, Empty)
  let root : TreeNode = Node(1, leftChild, rightChild)
  let depth = min_depth(root)
  assert_eq(depth, 2)
}
