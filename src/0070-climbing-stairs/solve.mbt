///|
fn climb_stairs(n : Int) -> Int {
  if n <= 1 {
    return n
  }
  let dp = [0, 1, 2]
  dp[n] = dp[n - 1] + dp[n - 2]
  dp[n]
}
