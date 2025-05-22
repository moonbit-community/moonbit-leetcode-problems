enum Tree {
  Empty
  Node(Tree, Int, Tree)
} derive(Show)

fn pretty_print(t : Tree) -> Array[Int] {
  let ans : Array[Int] = []
  fn go(tree : Tree, list : Array[Int]) -> Unit {
    match tree {
      Empty => ans.push(-1)
      Node(l, v, r) => {
        ans.push(v)
        go(l, list)
        go(r, list)
      }
    }
  }

  go(t, ans)
  let mut null = ans.length() - 1
  for i = ans.length() - 1; i >= 0; i = i - 1 {
    if ans[i] == -1 {
      continue i - 1
    } else {
      null = i
      break
    }
  }
  ans.split_at(null + 1).0
}

fn generate_trees(n : Int) -> Array[Array[Int]] {
  if n == 0 {
    return []
  }
  let ans = generate_trees_helper(1, n)
  let ans_vec : Array[Array[Int]] = []
  ans.each(fn(tree) { ans_vec.push(pretty_print(tree)) })
  ans_vec
}

fn generate_trees_helper(start : Int, end : Int) -> Array[Tree] {
  let all_trees : Array[Tree] = []
  if start > end {
    all_trees.push(Tree::Empty)
    return all_trees
  }
  for i = start; i <= end; i = i + 1 {
    let left_trees = generate_trees_helper(start, i - 1)
    let right_trees = generate_trees_helper(i + 1, end)
    left_trees.each(
      fn(left) {
        right_trees.each(
          fn(right) {
            let cur_tree = Tree::Node(left, i, right)
            all_trees.push(cur_tree)
          },
        )
      },
    )
  }
  all_trees
}
