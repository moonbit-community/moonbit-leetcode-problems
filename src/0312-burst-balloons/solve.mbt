///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn max_coins(nums : Array[Int]) -> Int {
  let n = nums.length() + 2
  let vals : Array[Int] = Array::make(n, 1) // Creating an Array of length n with all values initialised to 1
  // Fill values array
  let mut i = 1
  while i <= nums.length() {
    vals[i] = nums[i - 1]
    i = i + 1
  }
  let dp : Array[Array[Int]] = Array::make(n, Array::make(n, 0)) // DP array
  for l = 2; l < n; l = l + 1 {
    for i = 0; i + l < n; i = i + 1 {
      let j = i + l
      for k = i + 1; k < j; k = k + 1 {
        dp[i][j] = max(
          dp[i][j],
          dp[i][k] + dp[k][j] + vals[i] * vals[k] * vals[j],
        )
      }
    }
  }
  dp[0][n - 1]
}
