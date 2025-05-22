///|
fn unique_paths_with_obstacles(obstacle_grid : Array[Array[Int]]) -> Int {
  let m = obstacle_grid.length()
  let n = obstacle_grid[0].length()
  let dp : Array[Array[Int]] = Array::makei(m, fn(_) { Array::make(n, 0) })
  let mut i = 0
  while i < m && obstacle_grid[i][0] == 0 {
    dp[i][0] = 1
    i = i + 1
  }
  let mut j = 0
  while j < n && obstacle_grid[0][j] == 0 {
    dp[0][j] = 1
    j = j + 1
  }
  for i = 1; i < m; i = i + 1 {
    for j = 1; j < n; j = j + 1 {
      if obstacle_grid[i][j] == 0 {
        dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
      }
    }
  }
  dp[m - 1][n - 1]
}
