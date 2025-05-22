fn min_sideway_jumps(obstacles : Array[Int]) -> Int {
  let n = obstacles.length() - 1
  let dp = Array::make(3, Array::make(n + 1, 2_0000_0000))

  // Initialize starting point
  dp[1][0] = 0
  for i = 1; i <= n; i = i + 1 {
    for j = 0; j < 3; j = j + 1 {
      if obstacles[i] - 1 == j {
        continue
      }
      for k = 0; k < 3; k = k + 1 {
        if j == k {
          dp[j][i] = @math.minimum(dp[j][i], dp[j][i - 1])
        } else if obstacles[i] - 1 != k {
          dp[j][i] = @math.minimum(dp[j][i], dp[k][i - 1] + 1)
        }
      }
    }
  }

  // Find the minimum side jumps at the last point
  @math.minimum(@math.minimum(dp[0][n], dp[1][n]), dp[2][n])
}
