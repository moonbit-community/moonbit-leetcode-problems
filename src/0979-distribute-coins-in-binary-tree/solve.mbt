enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

fn abs(x : Int) -> Int {
  if x < 0 {
    -x
  } else {
    x
  }
}

fn distribute_coins(root : TreeNode, global_ans : Int) -> Int {
  let ans = dfs(root, global_ans)
  ans
}

fn dfs(root : TreeNode, sum : Int) -> Int {
  let mut sum = sum
  match root {
    Empty => sum
    Node(val, left, right) => {
      let left_coins = dfs(left, sum)
      let right_coins = dfs(right, sum)
      sum += abs(left_coins) + abs(right_coins)
      left_coins + right_coins + val - 1
    }
  }
}
