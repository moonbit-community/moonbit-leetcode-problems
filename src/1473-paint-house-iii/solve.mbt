///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn min_cost(
  houses : Array[Int],
  cost : Array[Array[Int]],
  m : Int,
  n : Int,
  target : Int
) -> Int {
  let inf = 2_0000_0000
  let f = Array::make(m, Array::make(n + 1, Array::make(target + 1, inf)))
  if houses[0] == 0 {
    for j = 1; j < n + 1; j = j + 1 {
      f[0][j][1] = cost[0][j - 1]
    }
  } else {
    f[0][houses[0]][1] = 0
  }
  for i = 1; i < m; i = i + 1 {
    if houses[i] == 0 {
      for j = 1; j < n + 1; j = j + 1 {
        for k = 1; k < min(target, i + 1) + 1; k = k + 1 {
          for j0 = 1; j0 < n + 1; j0 = j0 + 1 {
            if j0 == j {
              f[i][j][k] = min(f[i][j][k], f[i - 1][j][k] + cost[i][j - 1])
            } else {
              f[i][j][k] = min(f[i][j][k], f[i - 1][j0][k - 1] + cost[i][j - 1])
            }
          }
        }
      }
    } else {
      let j = houses[i]
      for k = 1; k < min(target, i + 1) + 1; k = k + 1 {
        for j0 = 1; j0 < n + 1; j0 = j0 + 1 {
          if j0 == j {
            f[i][j][k] = min(f[i][j][k], f[i - 1][j][k])
          } else {
            f[i][j][k] = min(f[i][j][k], f[i - 1][j0][k - 1])
          }
        }
      }
    }
  }
  let mut ans = inf
  for j = 1; j < n + 1; j = j + 1 {
    ans = min(ans, f[m - 1][j][target])
  }
  if ans >= inf {
    -1
  } else {
    ans
  }
}
