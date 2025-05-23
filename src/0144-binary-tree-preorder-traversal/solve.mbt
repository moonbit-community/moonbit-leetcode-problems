///|
fn preorder_traversal(root : TreeNode?, res~ : Array[Int] = []) -> Array[Int] {
  guard root is Some(Node(v, l, r)) else { res }
  res.push(v)
  let _ = preorder_traversal(l, res~)
  let _ = preorder_traversal(r, res~)
  res
}
