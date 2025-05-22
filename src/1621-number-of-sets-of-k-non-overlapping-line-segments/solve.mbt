fn init_2d_array(rows : Int, cols : Int) -> Array[Array[Int]] {
  Array::make(rows, Array::make(cols, 0))
}

fn number_of_sets(n : Int, k : Int) -> Int {
  let f = init_2d_array(n + 1, k + 1)
  let g = init_2d_array(n + 1, k + 1)
  f[1][0] = 1
  let mod = 1000000007
  for i = 2; i <= n; i = i + 1 {
    for j = 0; j <= k; j = j + 1 {
      f[i][j] = (f[i - 1][j] + g[i - 1][j]) % mod
      g[i][j] = g[i - 1][j]
      if j != 0 {
        g[i][j] = (g[i][j] + f[i - 1][j - 1]) % mod
        g[i][j] = (g[i][j] + g[i - 1][j - 1]) % mod
      }
    }
  }
  (f[n][k] + g[n][k]) % mod
}
