///|
fn probability_of_heads(prob : Array[Double], target : Int) -> Double {
  let n = prob.length()
  let f = Array::make(n + 1, Array::make(target + 1, 0.0))
  f[0][0] = 1.0
  fn min(a : Int, b : Int) -> Int {
    if a < b {
      a
    } else {
      b
    }
  }

  for i = 1; i <= n; i = i + 1 {
    for j = 0; j <= min(i, target); j = j + 1 {
      f[i][j] = f[i - 1][j] * (1.0 - prob[i - 1])
      if j > 0 {
        f[i][j] += f[i - 1][j - 1] * prob[i - 1]
      }
    }
  }
  f[n][target]
}
