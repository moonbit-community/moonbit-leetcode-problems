///|
fn sum(nums : Array[Int]) -> Int {
  let mut s = 0
  let mut i = 0
  while i < nums.length() {
    s = s + nums[i]
    i = i + 1
  }
  s
}

///|
fn can_partition(nums : Array[Int]) -> Bool {
  let s = sum(nums)
  if s % 2 == 1 {
    return false
  }
  let n = nums.length()
  let m = s / 2
  let f : Array[Array[Bool]] = Array::make(n + 1, Array::make(m + 1, false))
  f[0][0] = true
  let mut i = 1
  while i <= n {
    let x = nums[i - 1]
    let mut j = 0
    while j <= m {
      f[i][j] = f[i - 1][j] || (j >= x && f[i - 1][j - x])
      j = j + 1
    }
    i = i + 1
  }
  f[n][m]
}
