///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq)

///|
fn has_path_sum(root : TreeNode, target_sum : Int) -> Bool {
  dfs(root, target_sum)
}

///|
fn dfs(root : TreeNode, s : Int) -> Bool {
  match root {
    Empty => false
    Node(val, left, right) => {
      let s = s - val
      if left == Empty && right == Empty && s == 0 {
        true
      } else {
        dfs(left, s) || dfs(right, s)
      }
    }
  }
}

// Testing the has_path_sum function
