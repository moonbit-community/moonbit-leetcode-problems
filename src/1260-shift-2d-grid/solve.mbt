fn shift_grid(grid : Array[Array[Int]], k : Int) -> Array[Array[Int]] {
  let m = grid.length()
  let n = grid[0].length()
  let ans : Array[Array[Int]] = Array::make(m, Array::make(n, 0))
  fn floor(dividend : Int, divisor : Int) -> Int {
    dividend / divisor
  }

  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let idx = (i * n + j + k) % (m * n)
      let x = floor(idx, n)
      let y = idx % n
      ans[x][y] = grid[i][j]
    }
  }
  ans
}
