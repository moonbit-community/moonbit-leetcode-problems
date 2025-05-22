///|
fn min_cost(n : Int, cuts : Array[Int]) -> Int {
  let vec_cuts = Array::copy(cuts)
  vec_cuts.push(0)
  vec_cuts.push(n)
  vec_cuts.sort()
  let m = vec_cuts.length()
  let f : Array[Array[Int]] = Array::make(m, Array::make(m, 0))
  for i = m - 2; i >= 0; i = i - 1 {
    for j = i + 2; j < m; j = j + 1 {
      f[i][j] = 100000000
      for k = i + 1; k < j; k = k + 1 {
        f[i][j] = min(f[i][j], f[i][k] + f[k][j] + vec_cuts[j] - vec_cuts[i])
      }
    }
  }
  f[0][m - 1]
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
