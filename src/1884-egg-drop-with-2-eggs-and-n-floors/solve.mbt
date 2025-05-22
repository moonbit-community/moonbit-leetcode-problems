///|
fn min_drops_required(n : Int) -> Int {
  let dp = Array::make(3, Array::make(n + 1, 0))
  for j = 1; j <= n; j = j + 1 {
    dp[1][j] = j
  }
  dp[2][0] = 0
  dp[2][1] = 1
  for j = 2; j <= n; j = j + 1 {
    dp[2][j] = 2_0000_0000
    for x = 1; x <= j; x = x + 1 {
      let max_drops = 1 + @math.maximum(dp[2][j - x], dp[1][x - 1])
      if max_drops < dp[2][j] {
        dp[2][j] = max_drops
      }
    }
  }
  dp[2][n]
}
