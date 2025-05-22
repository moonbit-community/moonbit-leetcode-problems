enum TreeNode {
  Empty
  Node(Int, mut ~left : TreeNode, mut ~right : TreeNode)
} derive(Show, Eq)

fn is_leaf(node : TreeNode) -> Bool {
  match node {
    Node(_, left=Empty, right=Empty) => true
    _ => false
  }
}

fn find_leaf_nodes(root : TreeNode) -> Array[Int] {
  let leaves = Array::new()
  let stack = Array::new()
  stack.push(root)
  while stack.length() > 0 {
    let node = stack.pop_exn()
    match node {
      Empty => ()
      Node(val, ~left, ~right) =>
        if is_leaf(node) {
          leaves.push(val)
        } else {
          stack.push(right)
          stack.push(left)
        }
    }
  }
  leaves
}

fn merge_trees(trees : Array[TreeNode]) -> TreeNode? {
  let root_map = @hashmap.T::new()
  let leaf_map = @hashmap.T::new()
  for i = 0; i < trees.length(); i = i + 1 {
    let root = trees[i]
    match root {
      Node(val, left=_, right=_) => root_map.set(val, root)
      _ => ()
    }
    let leaves = find_leaf_nodes(root)
    for j = 0; j < leaves.length(); j = j + 1 {
      leaf_map.set(leaves[j], root)
    }
  }
  let mut merged_root = None
  root_map.each(
    fn(root_val, root_node) {
      if leaf_map.contains(root_val) {
        let leaf_node = leaf_map.get(root_val)
        match leaf_node {
          Some(leaf) => {
            let new_tree = replace_leaf(leaf, root_val, root_node)
            merged_root = Some(new_tree)
          }
          None => ()
        }
      }
    },
  )
  match merged_root {
    Some(root) => if is_valid_bst(root) { Some(root) } else { None }
    None => None
  }
}

fn replace_leaf(
  tree : TreeNode,
  _leaf_val : Int,
  new_tree : TreeNode
) -> TreeNode {
  let stack = Array::new()
  stack.push(tree)
  while stack.length() > 0 {
    let node = stack.pop_exn()
    match node {
      Empty => ()
      Node(_val, ~left, ~right) as node => {
        match left {
          Empty => ()
          Node(_leaf_val, left=Empty, right=Empty) => node.left = new_tree
          Node(_leaf_val, left=_, right=_) => stack.push(left)
        }
        match right {
          Empty => ()
          Node(_leaf_val, left=Empty, right=Empty) => node.right = new_tree
          Node(_leaf_val, left=_, right=_) => stack.push(right)
        }
      }
    }
  }
  tree
}

fn is_valid_bst(root : TreeNode) -> Bool {
  fn helper(node : TreeNode, min : Int, max : Int) -> Bool {
    match node {
      Empty => true
      Node(val, ~left, ~right) =>
        if val <= min || val >= max {
          false
        } else {
          helper(left, min, val) && helper(right, val, max)
        }
    }
  }

  helper(root, -2_147_483_648, 2_147_483_647)
}

// Test cases
