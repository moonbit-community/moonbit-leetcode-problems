///|
fn ways_to_distribute(n : Int, k : Int) -> Int {
  let mod = 1000000007
  // Initialize a 2D array with zeros
  let f : Array[Array[Int]] = Array::make(n + 1, Array::make(k + 1, 0))
  f[0][0] = 1
  for i = 1; i <= n; i = i + 1 {
    for j = 1; j <= k; j = j + 1 {
      f[i][j] = (f[i - 1][j] * j + f[i - 1][j - 1]) % mod
    }
  }
  f[n][k]
}
