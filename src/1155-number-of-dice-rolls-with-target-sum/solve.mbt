///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn num_rolls_to_target(n : Int, k : Int, target : Int) -> Int {
  let f : Array[Array[Int]] = Array::make(n + 1, Array::make(target + 1, 0))
  f[0][0] = 1
  let mod = 1000000007
  for i = 1; i <= n; i = i + 1 {
    for j = 1; j <= min(i * k, target); j = j + 1 {
      for h = 1; h <= min(j, k); h = h + 1 {
        f[i][j] = (f[i][j] + f[i - 1][j - h]) % mod
      }
    }
  }
  f[n][target]
}
