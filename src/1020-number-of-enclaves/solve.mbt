///|
fn num_enclaves(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let dirs = [-1, 0, 1, 0, -1]
  fn dfs(
    self : Array[Array[Int]],
    i : Int,
    j : Int,
    dirs : Array[Int],
    m : Int,
    n : Int
  ) {
    self[i][j] = 0
    for k = 0; k < 4; k = k + 1 {
      let x = i + dirs[k]
      let y = j + dirs[k + 1]
      if x >= 0 && x < m && y >= 0 && y < n && self[x][y] == 1 {
        dfs(self, x, y, dirs, m, n)
      }
    }
  }

  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if grid[i][j] == 1 && (i == 0 || i == m - 1 || j == 0 || j == n - 1) {
        dfs(grid, i, j, dirs, m, n)
      }
    }
  }
  let mut ans = 0
  for i = 0; i < m; i = i + 1 {
    let row = grid[i]
    for j = 0; j < n; j = j + 1 {
      let v = row[j]
      ans = ans + v
    }
  }
  ans
}
