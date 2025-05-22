///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn maximum_sum(nums : Array[Int]) -> Int {
  let n = nums.length()
  let left = Array::make(n, 0)
  let right = Array::make(n, 0)
  let mut s = 0
  for i = 0; i < n; i = i + 1 {
    s = max(s, 0) + nums[i]
    left[i] = s
  }
  s = 0
  for i = n - 1; i >= 0; i = i - 1 {
    s = max(s, 0) + nums[i]
    right[i] = s
  }
  let mut ans = left[0]
  for i = 1; i < n - 1; i = i + 1 {
    ans = max(ans, left[i - 1] + right[i + 1])
  }
  ans
}
