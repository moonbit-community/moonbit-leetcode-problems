fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn tallest_billboard(rods : Array[Int]) -> Int {
  let n = rods.length()
  let mut s = 0
  for i = 0; i < n; i = i + 1 {
    s = s + rods[i]
  }
  let f : Array[Array[Int]] = Array::make(
    n + 1,
    Array::make(s + 1, -2_0000_0000),
  )
  f[0][0] = 0
  let mut t = 0
  for i = 1; i <= n; i = i + 1 {
    let x = rods[i - 1]
    t = t + x
    let mut j = 0
    while j <= t {
      f[i][j] = max(f[i][j], f[i - 1][j])
      if j >= x {
        f[i][j] = max(f[i][j], f[i - 1][j - x])
      }
      if j + x <= t {
        f[i][j] = max(f[i][j], f[i - 1][j + x] + x)
      }
      if j < x {
        f[i][j] = max(f[i][j], f[i - 1][x - j] + x - j)
      }
      j = j + 1
    }
  }
  f[n][0]
}
