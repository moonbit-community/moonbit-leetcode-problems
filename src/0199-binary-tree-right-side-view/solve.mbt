///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn dfs(
  node : TreeNode,
  depth : Int,
  ans : @immut/list.T[Int]
) -> @immut/list.T[Int] {
  match node {
    Empty => ans
    Node(val, left, right) => {
      let ans_after_val = if depth == get_length(ans) {
        append_to_list(ans, val)
      } else {
        ans
      }
      let ans_after_right = dfs(right, depth + 1, ans_after_val)
      dfs(left, depth + 1, ans_after_right)
    }
  }
}

///|
fn right_side_view(root : TreeNode) -> @immut/list.T[Int] {
  dfs(root, 0, Nil)
}

///|
fn append_to_list(list : @immut/list.T[Int], value : Int) -> @immut/list.T[Int] {
  match list {
    Nil => Cons(value, Nil)
    Cons(head, tail) => Cons(head, append_to_list(tail, value))
  }
}

///|
fn get_length(list : @immut/list.T[Int]) -> Int {
  match list {
    Nil => 0
    Cons(_, tail) => 1 + get_length(tail)
  }
}
