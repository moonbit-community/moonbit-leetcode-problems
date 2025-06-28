///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq, Show)

// Custom dfs function to find the lowest common ancestor of deepest leaves.

///|
fn dfs(node : TreeNode) -> (TreeNode, Int) {
  match node {
    Empty => (Empty, 0)
    Node(val, left, right) => {
      let (l, d1) = dfs(left)
      let (r, d2) = dfs(right)
      if d1 > d2 {
        return (l, d1 + 1)
      } else if d1 < d2 {
        return (r, d2 + 1)
      } else {
        return (node, d1 + 1)
      }
    }
  }
}

// Main function to find the lowest common ancestor of the deepest leaves.

///|
fn lca_deepest_leaves(root : TreeNode) -> TreeNode {
  let (result, _) = dfs(root)
  result
}

// Test cases
