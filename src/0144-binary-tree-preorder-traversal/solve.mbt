///|
enum TreeNode {
  Empty
  Node(Int, TreeNode, TreeNode)
}

///|
fn append(list : @immut/list.T[Int], value : Int) -> @immut/list.T[Int] {
  match list {
    Nil => Cons(value, Nil)
    Cons(head, tail) => Cons(head, append(tail, value))
  }
}

///|
fn dfs(root : TreeNode, ans : @immut/list.T[Int]) -> @immut/list.T[Int] {
  match root {
    Empty => ans
    Node(val, left, right) => {
      let ans_with_root = append(ans, val)
      let ans_with_left = dfs(left, ans_with_root)
      dfs(right, ans_with_left)
    }
  }
}

///|
fn preorder_traversal(root : TreeNode) -> @immut/list.T[Int] {
  dfs(root, Nil)
}
