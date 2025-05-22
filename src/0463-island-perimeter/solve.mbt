///|
fn island_perimeter(grid : Array[Array[Int]]) -> Int {
  let mut ans = 0
  let m = grid.length()
  let n = grid[0].length()
  let mut i = 0
  while i < m {
    let mut j = 0
    while j < n {
      if grid[i][j] == 1 {
        ans = ans + 4
        if i < m - 1 && grid[i + 1][j] == 1 {
          ans = ans - 2
        }
        if j < n - 1 && grid[i][j + 1] == 1 {
          ans = ans - 2
        }
      }
      j = j + 1
    }
    i = i + 1
  }
  ans
}
