///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn connect_two_groups(cost : Array[Array[Int]]) -> Int {
  let m = cost.length()
  let n = cost[0].length()
  let inf = @int.max_value
  let f : Array[Array[Int]] = Array::make(m + 1, 0).map(fn(x) {
    Array::make((1).lsl(n), inf)
  })
  f[0][0] = 0
  for i = 1; i <= m; i = i + 1 {
    for j = 0; j < (1).lsl(n); j = j + 1 {
      for k = 0; k < n; k = k + 1 {
        if (j.lsr(k) & 1) == 1 {
          let c = cost[i - 1][k]
          f[i][j] = min(f[i][j], f[i][j ^ (1).lsl(k)] + c)
          f[i][j] = min(f[i][j], f[i - 1][j] + c)
          f[i][j] = min(f[i][j], f[i - 1][j ^ (1).lsl(k)] + c)
        }
      }
    }
  }
  f[m][(1).lsl(n) - 1]
}
