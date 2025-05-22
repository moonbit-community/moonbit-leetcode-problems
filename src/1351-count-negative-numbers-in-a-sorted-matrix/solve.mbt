fn count_negatives(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  let mut ans = 0
  let mut i = m - 1
  let mut j = 0
  while i >= 0 && j < n {
    if grid[i][j] < 0 {
      ans = ans + (n - j)
      i = i - 1
    } else {
      j = j + 1
    }
  }
  ans
}
