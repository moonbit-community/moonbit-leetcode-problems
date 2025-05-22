///|
fn num_music_playlists(n : Int, goal : Int, k : Int) -> Int {
  let mod : Int = 1000000007
  let f : Array[Array[Int]] = Array::make(goal + 1, Array::make(n + 1, 0))
  f[0][0] = 1
  let mut i = 1
  while i <= goal {
    let mut j = 1
    while j <= n {
      f[i][j] = f[i - 1][j - 1] * (n - j + 1)
      if j > k {
        f[i][j] = f[i][j] + f[i - 1][j] * (j - k)
      }
      f[i][j] = f[i][j] % mod
      j = j + 1
    }
    i = i + 1
  }
  f[goal][n]
}
