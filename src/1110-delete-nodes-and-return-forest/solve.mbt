///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq, Show)

///|
fn delete_nodes(
  root : TreeNode,
  to_delete : Array[Int]
) -> @immut/list.T[TreeNode] {
  let s : Array[Bool] = Array::make(1001, false)
  for i = 0; i < to_delete.length(); i = i + 1 {
    let x = to_delete[i]
    s[x] = true
  }
  let mut ans : @immut/list.T[TreeNode] = Nil
  fn dfs(node : TreeNode) -> TreeNode {
    match node {
      Empty => Empty
      Node(val, left, right) => {
        let new_left = dfs(left)
        let new_right = dfs(right)
        if s[val] {
          if (match new_left {
              Empty => false
              Node(_, _, _) => true
            }) {
            ans = Cons(new_left, ans)
          }
          if (match new_right {
              Empty => false
              Node(_, _, _) => true
            }) {
            ans = Cons(new_right, ans)
          }
          Empty
        } else {
          Node(val, new_left, new_right)
        }
      }
    }
  }

  if (match dfs(root) {
      Empty => false
      _ => true
    }) {
    ans = Cons(root, ans)
  }
  ans
}

// Helper function to create a TreeNode::Node in a more concise manner

///|
fn node(val : Int, left : TreeNode, right : TreeNode) -> TreeNode {
  TreeNode::Node(val, left, right)
}
