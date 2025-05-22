///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn sum_root_to_leaf(root : TreeNode) -> Int {
  fn dfs(node : TreeNode, num : Int) -> Int {
    match node {
      Empty => 0
      Node(val, left, right) => {
        let current_num = num.lsl(1) | val
        match (left, right) {
          (Empty, Empty) => current_num
          _ => dfs(left, current_num) + dfs(right, current_num)
        }
      }
    }
  }

  dfs(root, 0)
}
