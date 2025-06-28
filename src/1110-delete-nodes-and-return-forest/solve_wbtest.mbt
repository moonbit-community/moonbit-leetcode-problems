///|
test "example 1" {
  let root = node(
    1,
    node(2, TreeNode::Empty, TreeNode::Empty),
    node(3, TreeNode::Empty, TreeNode::Empty),
  )
  let to_delete = [3]
  let expected = @immut/list.of([node(2, TreeNode::Empty, TreeNode::Empty)])
  assert_eq(delete_nodes(root, to_delete), expected)
}

///|
test "example 2" {
  let root = node(
    1,
    node(
      2,
      node(4, TreeNode::Empty, TreeNode::Empty),
      node(5, TreeNode::Empty, TreeNode::Empty),
    ),
    node(
      3,
      node(6, TreeNode::Empty, TreeNode::Empty),
      node(7, TreeNode::Empty, TreeNode::Empty),
    ),
  )
  let to_delete = [3, 5]
  let expected = @immut/list.of([
    node(
      1,
      node(2, node(4, TreeNode::Empty, TreeNode::Empty), TreeNode::Empty),
      TreeNode::Empty,
    ),
    node(6, TreeNode::Empty, TreeNode::Empty),
    node(7, TreeNode::Empty, TreeNode::Empty),
  ])
  assert_eq(delete_nodes(root, to_delete), expected)
}
