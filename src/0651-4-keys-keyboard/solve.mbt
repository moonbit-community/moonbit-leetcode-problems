///|
fn max(dp : Array[Int], i : Int, j : Int) -> Int {
  // Simulate Java's Math.max method.
  if dp[i] > dp[j] {
    dp[i]
  } else {
    dp[j]
  }
}

///|
fn max_a(n : Int) -> Int {
  let dp : Array[Int] = Array::make(n + 1, 0)
  for i = 0; i < n + 1; i = i + 1 {
    dp[i] = i
  }
  for i = 3; i < n + 1; i = i + 1 {
    for j = 2; j < i - 1; j = j + 1 {
      dp[i] = max(dp, i, dp[j - 1] * (i - j))
    }
  }
  dp[n]
}
