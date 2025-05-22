test "example" {
  let node2 : TreeNode = Node(
    2,
    TreeNode::Node(4, TreeNode::Empty, TreeNode::Empty),
    TreeNode::Node(5, TreeNode::Empty, TreeNode::Empty),
  )
  let node3 : TreeNode = Node(3, TreeNode::Empty, TreeNode::Empty)
  let root : TreeNode = Node(1, node2, node3)
  assert_eq!(btree_game_winning_move(root, 5, 3), true)
}
