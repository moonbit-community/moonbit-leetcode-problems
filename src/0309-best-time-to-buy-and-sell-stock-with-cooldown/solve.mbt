fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

fn max_profit(prices : Array[Int]) -> Int {
  let n = prices.length()
  // Initialize dp table
  let f : Array[Array[Int]] = Array::make(n, Array::make(2, -1))
  fn dfs(
    i : Int,
    j : Int,
    prices : Array[Int],
    f : Array[Array[Int]],
    n : Int
  ) -> Int {
    if i >= n {
      0
    } else if f[i][j] != -1 {
      f[i][j]
    } else {
      let mut ans = dfs(i + 1, j, prices, f, n)
      if j == 1 {
        ans = max(ans, prices[i] + dfs(i + 2, 0, prices, f, n))
      } else {
        ans = max(ans, -prices[i] + dfs(i + 1, 1, prices, f, n))
      }
      f[i][j] = ans
      ans
    }
  }

  dfs(0, 0, prices, f, n)
}
