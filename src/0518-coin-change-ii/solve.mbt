///|
fn change(amount : Int, coins : Array[Int]) -> Int {
  let m : Int = coins.length()
  let dp : Array[Array[Int]] = Array::make(m + 1, Array::make(amount + 1, 0))
  dp[0][0] = 1
  for i = 1; i <= m; i = i + 1 {
    for j = 0; j <= amount; j = j + 1 {
      let mut k = 0
      while k * coins[i - 1] <= j {
        dp[i][j] = dp[i][j] + dp[i - 1][j - k * coins[i - 1]]
        k = k + 1
      }
    }
  }
  dp[m][amount]
}
