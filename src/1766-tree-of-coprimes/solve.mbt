///|
struct TreeNode {
  value : Int
  children : Array[TreeNode]
}

///|
fn gcd(a : Int, b : Int) -> Int {
  let mut a = a
  let mut b = b
  while b != 0 {
    let temp = b
    b = a % b
    a = temp
  }
  a
}

///|
fn dfs(
  node : TreeNode,
  nums : Array[Int],
  stack : Array[Int],
  result : @hashmap.T[Int, Int]
) -> Unit {
  let current_value = nums[node.value]
  let mut closest_ancestor = -1
  for i = stack.length() - 1; i >= 0; i = i - 1 {
    let ancestor_value = nums[stack[i]]
    if gcd(current_value, ancestor_value) == 1 {
      closest_ancestor = stack[i]
      break
    }
  }
  result.set(node.value, closest_ancestor)
  stack.push(node.value)
  for i = 0; i < node.children.length(); i = i + 1 {
    let child = node.children[i]
    dfs(child, nums, stack, result)
  }
  stack.pop() |> ignore
}

///|
fn tree_of_coprimes(nums : Array[Int], edges : Array[Array[Int]]) -> Array[Int] {
  let n = nums.length()
  let tree = Array::make(n, TreeNode::{ value: 0, children: [] })
  for i = 0; i < n; i = i + 1 {
    tree[i] = TreeNode::{ value: i, children: [] }
  }
  for i = 0; i < edges.length(); i = i + 1 {
    let edge = edges[i]
    let u = edge[0]
    let v = edge[1]
    tree[u].children.push(tree[v])
    tree[v].children.push(tree[u])
  }
  let result = @hashmap.new()
  let stack = []
  dfs(tree[0], nums, stack, result)
  let ans = Array::make(n, -1)
  for i = 0; i < n; i = i + 1 {
    ans[i] = result.get_or_default(i, -1)
  }
  ans
}
