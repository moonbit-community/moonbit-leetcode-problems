fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn min_path_sum(grid : Array[Array[Int]]) -> Int {
  let m = grid.length() // Grid rows
  let n = grid[0].length() // Grid columns
  let f : Array[Array[Int]] = Array::make(m, Array::make(n, 0)) // Initialize f array
  f[0][0] = grid[0][0]

  // Initialize the first column of f
  let mut i = 1
  while i < m {
    f[i][0] = f[i - 1][0] + grid[i][0]
    i = i + 1
  }

  // Initialize the first row of f
  let mut j = 1
  while j < n {
    f[0][j] = f[0][j - 1] + grid[0][j]
    j = j + 1
  }

  // Fill in the rest of f
  i = 1
  while i < m {
    j = 1
    while j < n {
      f[i][j] = min(f[i - 1][j], f[i][j - 1]) + grid[i][j]
      j = j + 1
    }
    i = i + 1
  }
  f[m - 1][n - 1]
}
