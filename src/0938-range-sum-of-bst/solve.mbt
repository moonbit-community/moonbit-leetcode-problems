// Definition for a binary tree node.
///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn range_sum_bst(root : TreeNode, low : Int, high : Int) -> Int {
  dfs(root, low, high)
}

///|
fn dfs(root : TreeNode, low : Int, high : Int) -> Int {
  match root {
    Empty => 0
    Node(x, left, right) => {
      let mut ans = if low <= x && x <= high { x } else { 0 }
      if x > low {
        ans = ans + dfs(left, low, high)
      }
      if x < high {
        ans = ans + dfs(right, low, high)
      }
      ans
    }
  }
}
