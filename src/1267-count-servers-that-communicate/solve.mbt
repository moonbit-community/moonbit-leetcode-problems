fn count_servers(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let row = Array::make(m, 0)
  let col = Array::make(n, 0)
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if grid[i][j] == 1 {
        row[i] = row[i] + 1
        col[j] = col[j] + 1
      }
    }
  }
  let mut ans = 0
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if grid[i][j] == 1 && (row[i] > 1 || col[j] > 1) {
        ans = ans + 1
      }
    }
  }
  ans
}
