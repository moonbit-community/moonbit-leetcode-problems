///|
fn abs_diff(a : Int, b : Int) -> Int {
  if a > b {
    a - b
  } else {
    b - a
  }
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn max_value_after_reverse(nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut s = 0
  for i = 0; i < n - 1; i = i + 1 {
    s = s + abs_diff(nums[i], nums[i + 1])
  }
  let mut ans = s
  for i = 0; i < n - 1; i = i + 1 {
    let d = abs_diff(nums[i], nums[i + 1])
    ans = max(ans, s + abs_diff(nums[0], nums[i + 1]) - d)
    ans = max(ans, s + abs_diff(nums[n - 1], nums[i]) - d)
  }
  let dirs = [1, -1, -1, 1, 1]
  let inf = 2_0000_0000
  for k = 0; k < 4; k = k + 1 {
    let mut mx = -inf
    let mut mi = inf
    for i = 0; i < n - 1; i = i + 1 {
      let a = dirs[k] * nums[i] + dirs[k + 1] * nums[i + 1]
      let b = abs_diff(nums[i], nums[i + 1])
      mx = max(mx, a - b)
      mi = min(mi, a + b)
    }
    ans = max(ans, s + max(0, mx - mi))
  }
  ans
}
