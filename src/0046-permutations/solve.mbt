fn dfs(
  nums : Array[Int],
  len : Int,
  depth : Int,
  path : @immut/list.T[Int],
  used : Array[Bool],
  res : @immut/list.T[@immut/list.T[Int]]
) -> (@immut/list.T[Int], @immut/list.T[@immut/list.T[Int]]) {
  let mut path = path
  let mut res = res
  if depth == len {
    res = Cons(path, res)
    return (path, res)
  }
  for i = 0; i < len; i = i + 1 {
    if not(used[i]) {
      path = Cons(nums[i], path)
      used[i] = true
      let dfs_res = dfs(nums, len, depth + 1, path, used, res)
      path = dfs_res.0
      res = dfs_res.1
      used[i] = false
      path = path.remove_at(path.length() - 1)
    }
  }
  (path, res)
}

fn permute(nums : Array[Int]) -> @immut/list.T[@immut/list.T[Int]] {
  let len = nums.length()
  let mut ans : @immut/list.T[@immut/list.T[Int]] = @immut/list.T::of([])
  if len == 0 {
    return ans
  }
  let used = Array::make(len, false)
  let path : @immut/list.T[Int] = @immut/list.T::of([])
  let dfs_res = dfs(nums, len, 0, path, used, ans)
  ans = dfs_res.1
  ans
}
