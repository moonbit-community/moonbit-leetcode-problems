///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn cherry_pickup(grid : Array[Array[Int]]) -> Int {
  let m = grid.length()
  let n = grid[0].length()
  fn generate_3d_array(
    x : Int,
    y : Int,
    z : Int,
    initial_value : Int
  ) -> Array[Array[Array[Int]]] {
    Array::make(x, Array::make(y, Array::make(z, initial_value)))
  }

  let f = generate_3d_array(m, n, n, -1)
  f[0][0][n - 1] = grid[0][0] + grid[0][n - 1]
  for i = 1; i < m; i = i + 1 {
    for j1 = 0; j1 < n; j1 = j1 + 1 {
      for j2 = 0; j2 < n; j2 = j2 + 1 {
        let x = grid[i][j1] + if j1 == j2 { 0 } else { grid[i][j2] }
        for y1 = j1 - 1; y1 <= j1 + 1; y1 = y1 + 1 {
          for y2 = j2 - 1; y2 <= j2 + 1; y2 = y2 + 1 {
            if y1 >= 0 && y1 < n && y2 >= 0 && y2 < n && f[i - 1][y1][y2] != -1 {
              f[i][j1][j2] = max(f[i][j1][j2], f[i - 1][y1][y2] + x)
            }
          }
        }
      }
    }
  }
  let mut ans = 0
  for j1 = 0; j1 < n; j1 = j1 + 1 {
    for j2 = 0; j2 < n; j2 = j2 + 1 {
      ans = max(ans, f[m - 1][j1][j2])
    }
  }
  ans
}
