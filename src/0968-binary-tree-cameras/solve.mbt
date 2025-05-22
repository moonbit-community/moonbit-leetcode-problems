///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn min_camera_cover(root : TreeNode) -> Int {
  let ans = dfs(root)
  min(ans.0, ans.1)
}

///|
fn dfs(root : TreeNode) -> (Int, Int, Int) {
  match root {
    Empty => {
      let one = 1
      (one.lsl(29), 0, 0)
    }
    Node(_, left, right) => {
      let l = dfs(left)
      let r = dfs(right)
      let a = 1 + min(min(l.0, l.1), l.2) + min(min(r.0, r.1), r.2)
      let b = min(min(l.0 + r.1, l.1 + r.0), l.0 + r.0)
      let c = l.1 + r.1
      (a, b, c)
    }
  }
}

///|
fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}
