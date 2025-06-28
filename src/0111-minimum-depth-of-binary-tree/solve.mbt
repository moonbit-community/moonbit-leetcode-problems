// First, we define a binary tree node as an enum in Moonbit

///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

// The function min_depth takes a tree of type TreeNode and returns an Int representing the minimum depth

///|
fn min_depth(root : TreeNode) -> Int {
  match root {
    Empty => 0
    Node(_val, left, right) =>
      match left {
        Empty => 1 + min_depth(right)
        _ =>
          match right {
            Empty => 1 + min_depth(left)
            _ => 1 + min(min_depth(left), min_depth(right))
          }
      }
  }
}

// Since there's no built-in min function, we need to implement it ourselves.

///|
fn min(x : Int, y : Int) -> Int {
  if x <= y {
    x
  } else {
    y
  }
}
