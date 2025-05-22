///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq, Show)

///|
fn dfs(root : TreeNode, x : Int) -> TreeNode {
  match root {
    Empty => Empty
    Node(val, left, right) =>
      if val == x {
        root
      } else {
        let left_result = dfs(left, x)
        match left_result {
          Empty => dfs(right, x)
          _ => left_result
        }
      }
  }
}

///|
fn count(root : TreeNode) -> Int {
  match root {
    Empty => 0
    Node(_, left, right) => 1 + count(left) + count(right)
  }
}

///|
fn btree_game_winning_move(root : TreeNode, n : Int, x : Int) -> Bool {
  let node = dfs(root, x)
  let l = count(
    match node {
      Node(_, left, _) => left
      Empty => Empty
    },
  )
  let r = count(
    match node {
      Node(_, _, right) => right
      Empty => Empty
    },
  )
  fn max(a : Int, b : Int, c : Int) -> Int {
    if a > b {
      if a > c {
        a
      } else {
        c
      }
    } else if b > c {
      b
    } else {
      c
    }
  }

  max(l, r, n - l - r - 1) > n / 2
}
