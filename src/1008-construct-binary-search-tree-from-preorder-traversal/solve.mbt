///|
struct TreeNode {
  val : Int
  left : TreeNode?
  right : TreeNode?
} derive(Eq)

///|
fn dfs(
  preorder : Array[Int],
  next : Array[Int],
  left : Int,
  right : Int
) -> TreeNode? {
  if left >= right {
    return None
  }
  Some(TreeNode::{
    val: preorder[left],
    left: dfs(preorder, next, left + 1, next[left]),
    right: dfs(preorder, next, next[left], right),
  })
}

///|
fn bst_from_preorder(preorder : Array[Int]) -> TreeNode? {
  let n = preorder.length()
  let next = Array::make(n, 0)
  let stack : Array[Int] = Array::new()
  let mut i = n - 1
  while i >= 0 {
    while not(stack.is_empty()) &&
          preorder[stack.get(stack.length() - 1).or(0)] < preorder[i] {
      stack.pop() |> ignore
    }
    next[i] = if stack.is_empty() {
      n
    } else {
      stack.get(stack.length() - 1).or(0)
    }
    stack.push(i)
    i = i - 1
  }
  dfs(preorder, next, 0, n)
}

///|
fn collect_vals(node : TreeNode?) -> @immut/list.T[Int] {
  match node {
    None => @immut/list.of([])
    Some({ val, left, right }) =>
      @immut/list.of([val])
      .concat(collect_vals(left))
      .concat(collect_vals(right))
  }
}
