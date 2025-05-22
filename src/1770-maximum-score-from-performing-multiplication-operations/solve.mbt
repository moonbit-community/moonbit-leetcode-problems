///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn max_score(nums : Array[Int], multipliers : Array[Int]) -> Int {
  let m = multipliers.length()
  let n = nums.length()
  let dp = Array::make(m + 1, Array::make(m + 1, 0))
  for i = m - 1; i >= 0; i = i - 1 {
    for j = m - 1 - i; j >= 0; j = j - 1 {
      let pick_start = multipliers[i + j] * nums[i] + dp[i + 1][j]
      let pick_end = multipliers[i + j] * nums[n - 1 - j] + dp[i][j + 1]
      dp[i][j] = max(pick_start, pick_end)
    }
  }
  dp[0][0]
}
