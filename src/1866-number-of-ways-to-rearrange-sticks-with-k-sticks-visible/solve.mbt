fn rearrange_sticks(n : Int, k : Int) -> Int {
  let mod_val = 1_000_000_007
  let dp = Array::make(n + 1, Array::make(k + 1, 0))
  dp[0][0] = 1
  for i = 1; i <= n; i = i + 1 {
    for j = 1; j <= k; j = j + 1 {
      dp[i][j] = (dp[i - 1][j - 1] + (i - 1) * dp[i - 1][j]) % mod_val
    }
  }
  dp[n][k]
}
