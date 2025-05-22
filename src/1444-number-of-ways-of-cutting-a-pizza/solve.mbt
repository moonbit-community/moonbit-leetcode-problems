fn create_array3d(
  m : Int,
  n : Int,
  k : Int,
  initial_value : Int
) -> Array[Array[Array[Int]]] {
  Array::make(m, Array::make(n, Array::make(k, initial_value)))
}

fn create_array2d(m : Int, n : Int, initial_value : Int) -> Array[Array[Int]] {
  Array::make(m, Array::make(n, initial_value))
}

fn ways(pizza : Array[String], k : Int) -> Int {
  let mod = 1000000007
  let m = pizza.length()
  let n = pizza[0].length()
  let f = create_array3d(m, n, k, -1)
  let s = create_array2d(m + 1, n + 1, 0)
  for i = 1; i <= m; i = i + 1 {
    for j = 1; j <= n; j = j + 1 {
      let x = if pizza[i - 1][j - 1] == 'A' { 1 } else { 0 }
      s[i][j] = s[i - 1][j] + s[i][j - 1] - s[i - 1][j - 1] + x
    }
  }
  fn dfs(
    i : Int,
    j : Int,
    k : Int,
    f : Array[Array[Array[Int]]],
    s : Array[Array[Int]],
    m : Int,
    n : Int,
    mod : Int
  ) -> Int {
    if f[i][j][k] != -1 {
      return f[i][j][k]
    }
    if k == 0 {
      return if s[m][n] - s[i][n] - s[m][j] + s[i][j] > 0 { 1 } else { 0 }
    }
    let mut ans = 0
    for x = i + 1; x < m; x = x + 1 {
      if s[x][n] - s[i][n] - s[x][j] + s[i][j] > 0 {
        ans = (ans + dfs(x, j, k - 1, f, s, m, n, mod)) % mod
      }
    }
    for y = j + 1; y < n; y = y + 1 {
      if s[m][y] - s[i][y] - s[m][j] + s[i][j] > 0 {
        ans = (ans + dfs(i, y, k - 1, f, s, m, n, mod)) % mod
      }
    }
    f[i][j][k] = ans
    return ans
  }

  dfs(0, 0, k - 1, f, s, m, n, mod)
}
