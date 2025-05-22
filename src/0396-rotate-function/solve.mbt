///|
fn max_rotate_function(nums : Array[Int]) -> Int {
  let mut f = 0
  let mut s = 0
  let n = nums.length()
  let mut i = 0
  while i < n {
    f = f + i * nums[i]
    s = s + nums[i]
    i = i + 1
  }
  let mut ans = f
  let mut i = 1
  while i < n {
    f = f + s - n * nums[n - i]
    ans = max(ans, f)
    i = i + 1
  }
  ans
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
