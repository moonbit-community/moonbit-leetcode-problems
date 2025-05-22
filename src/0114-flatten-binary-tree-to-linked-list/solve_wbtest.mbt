test "example 1" {
  let root = TreeNode::Node(
    1,
    TreeNode::Node(2, TreeNode::Empty, TreeNode::Empty),
    TreeNode::Node(
      5,
      TreeNode::Empty,
      TreeNode::Node(6, TreeNode::Empty, TreeNode::Empty),
    ),
  )
  let res = flatten(root)
  fn go(root : TreeNode) {
    match root {
      Empty => ()
      Node(x, l, r) => {
        go(l)
        println(x)
        go(r)
      }
    }
  }

  go(res)
}
