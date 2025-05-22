///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn array_nesting(nums : Array[Int]) -> Int {
  let n : Int = nums.length()
  let vis : Array[Bool] = Array::make(n, false)
  let mut res = 0
  let mut i = 0
  while i < n {
    if vis[i] {
      i = i + 1
      continue
    }
    let mut cur = nums[i]
    let mut m = 1
    vis[cur] = true
    while nums[cur] != nums[i] {
      cur = nums[cur]
      m = m + 1
      vis[cur] = true
    }
    res = max(res, m)
    i = i + 1
  }
  res
}
