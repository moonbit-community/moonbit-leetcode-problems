///|
fn min_sub_array_len(target : Int, nums : Array[Int]) -> Int {
  let n = nums.length()
  let mut s = 0
  let mut ans = n + 1
  let mut i = 0
  let mut j = 0
  while i < n {
    s = s + nums[i]
    while s >= target {
      ans = min(ans, i - j + 1)
      s = s - nums[j]
      j = j + 1
    }
    i = i + 1
  }
  if ans == n + 1 {
    return 0
  } else {
    return ans
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    return a
  } else {
    return b
  }
}
