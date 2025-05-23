///|
fn postorder_traversal(root : TreeNode?, res~ : Array[Int] = []) -> Array[Int] {
  guard root is Some(Node(v, l, r)) else { res }
  let _ = postorder_traversal(l, res~)
  let _ = postorder_traversal(r, res~)
  res.push(v)
  res
}
