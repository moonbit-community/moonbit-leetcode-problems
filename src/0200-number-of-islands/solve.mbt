///|
fn dfs(grid : Array[Array[String]], i : Int, j : Int, m : Int, n : Int) -> Unit {
  grid[i][j] = "0" // Mark as visited
  let dirs = [-1, 0, 1, 0, -1]
  let mut k = 0
  while k < 4 {
    let x = i + dirs[k]
    let y = j + dirs[k + 1]
    if x >= 0 && x < m && y >= 0 && y < n && grid[x][y] == "1" {
      dfs(grid, x, y, m, n)
    }
    k = k + 1
  }
}

///|
fn num_islands(grid : Array[Array[String]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let mut ans = 0
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if grid[i][j] == "1" {
        dfs(grid, i, j, m, n)
        ans = ans + 1
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
