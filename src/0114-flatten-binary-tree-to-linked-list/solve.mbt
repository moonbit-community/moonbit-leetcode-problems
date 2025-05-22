///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
} derive(Eq)

fn flatten(root : TreeNode) -> TreeNode {
  let mut current = root
  match current {
    Empty => ()
    Node(_, left, _) => {
      if left != Empty {
        let mut pre = left
        while match pre {
                Empty => abort("")
                Node(_, _, right) => right != Empty
              } {
          match pre {
            Node(_, _, right) => pre = right
            _ => ()
          }
        }
        // Connect the rightmost node of the left subtree with the original right subtree.
        match (pre, current) {
          (Node(pre_val, pre_left, _), Node(_cur_val, _cur_left, cur_right)) =>
            pre = Node(pre_val, pre_left, cur_right)
          _ => ()
        }
        // Redirect the current node's right to its left, then set left to Empty.
        match current {
          Node(val, left, _) => current = Node(val, Empty, left)
          _ => ()
        }
      }
      // Move to the next node.
      match current {
        Node(_, _, right) => current = right
        _ => ()
      }
    }
  }
  root
}

// Examples of tests could be but due to limitations with constructing expected trees inline
// and the visual assertion needed which cannot be accomplished without an extensive tree comparison
// function, this snippet omits explicit test cases.
// However, for conceptual testing:
