fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn min_score_triangulation(values : Array[Int]) -> Int {
  let n = values.length()
  let f = Array::make(n, Array::make(n, 0))
  fn dfs(i : Int, j : Int, values : Array[Int], f : Array[Array[Int]]) -> Int {
    if i + 1 == j {
      0
    } else if f[i][j] > 0 {
      f[i][j]
    } else {
      let mut ans = 2_0000_0000
      let mut k = i + 1
      while k < j {
        ans = min(
          ans,
          dfs(i, k, values, f) + dfs(k, j, values, f) + values[i] * values[k] * values[j],
        )
        k = k + 1
      }
      f[i][j] = ans
      ans
    }
  }

  dfs(0, n - 1, values, f)
}
