struct TreeNode {
  val : Int
  left : TreeNode?
  right : TreeNode?
}

fn find_lca(root : TreeNode, p : Int, q : Int) -> TreeNode {
  if root.val == p || root.val == q {
    return root
  }
  let left_lca = root.left.map(fn(node) { find_lca(node, p, q) })
  let right_lca = root.right.map(fn(node) { find_lca(node, p, q) })
  match (left_lca, right_lca) {
    (Some(_), Some(_)) => return root
    (Some(left_lca), None) => return left_lca
    (None, Some(right_lca)) => return right_lca
    (None, None) => abort("unreachable")
  }
}

fn find_distance(root : TreeNode, target : Int) -> Int {
  if root.val == target {
    return 0
  }
  let left_distance = root.left.map(fn(node) { find_distance(node, target) })
  let right_distance = root.right.map(fn(node) { find_distance(node, target) })
  match left_distance {
    Some(left_distance) => return left_distance + 1
    None => ()
  }
  match right_distance {
    Some(right_distance) => return right_distance + 1
    None => ()
  }
  return -1
}

fn find_distance_between_nodes(root : TreeNode, p : Int, q : Int) -> Int {
  let lca = find_lca(root, p, q)
  let distance_p = find_distance(lca, p)
  let distance_q = find_distance(lca, q)
  return distance_p + distance_q
}
