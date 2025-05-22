enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

fn max_path_sum(root : TreeNode) -> Int {
  let ans = -1001 // Removed mut as its mutability is never used
  fn dfs(root : TreeNode, ans : Int) -> (Int, Int) {
    match root {
      Empty => (0, ans)
      Node(val, left, right) => {
        let (left_max, ans) = dfs(left, ans)
        let (right_max, ans) = dfs(right, ans)
        let left_gain = max(0, left_max)
        let right_gain = max(0, right_max)
        let price_newpath = val + left_gain + right_gain
        let ans = max(ans, price_newpath)
        (val + max(left_gain, right_gain), ans)
      }
    }
  }

  let (_, ans) = dfs(root, ans)
  ans
}

fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
