///|
fn permute_unique(nums : Array[Int]) -> Array[Array[Int]] {
  let ans : Array[Array[Int]] = []
  let perm : Array[Int] = []
  let vis = Array::make(nums.length(), false)
  nums.sort()
  backtrack(nums, ans, 0, perm, vis)
  ans
}

///|
fn backtrack(
  nums : Array[Int],
  ans : Array[Array[Int]],
  idx : Int,
  perm : Array[Int],
  vis : Array[Bool]
) -> Unit {
  if idx == nums.length() {
    let new_perm = Array::copy(perm)
    ans.push(new_perm)
    return
  }
  for i = 0; i < nums.length(); i = i + 1 {
    if vis[i] || (i > 0 && nums[i] == nums[i - 1] && not(vis[i - 1])) {
      continue i + 1
    }
    perm.push(nums[i])
    vis[i] = true
    backtrack(nums, ans, idx + 1, perm, vis)
    vis[i] = false
    perm.remove(idx) |> ignore
  }
}
