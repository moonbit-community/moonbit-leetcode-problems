///|
fn unique_paths(m : Int, n : Int) -> Int {
  let f : Array[Array[Int]] = Array::make(m, Array::make(n, 0))

  // Initialize the first row and first column to 1
  for i = 0; i < m; i = i + 1 {
    f[i][0] = 1
  }
  for j = 0; j < n; j = j + 1 {
    f[0][j] = 1
  }

  // Fill the rest of the array
  for i = 1; i < m; i = i + 1 {
    for j = 1; j < n; j = j + 1 {
      f[i][j] = f[i - 1][j] + f[i][j - 1]
    }
  }
  f[m - 1][n - 1]
}
