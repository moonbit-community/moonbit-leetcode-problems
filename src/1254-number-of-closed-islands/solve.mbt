///|
fn closed_island(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let dirs = [1, 0, -1, 0, 1]
  fn dfs(
    i : Int,
    j : Int,
    grid : Array[Array[Int]],
    m : Int,
    n : Int,
    dirs : Array[Int]
  ) -> Bool {
    if i < 0 || j < 0 || i >= m || j >= n {
      return false
    }
    if grid[i][j] == 1 {
      return true
    }
    grid[i][j] = 1 // mark as visited
    let mut res = true
    let mut k = 0
    while k < 4 {
      let x = i + dirs[k]
      let y = j + dirs[k + 1]
      res = res && dfs(x, y, grid, m, n, dirs)
      k = k + 1
    }
    res
  }

  let mut ans = 0
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if grid[i][j] == 0 {
        if dfs(i, j, grid, m, n, dirs) {
          ans = ans + 1
        }
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
