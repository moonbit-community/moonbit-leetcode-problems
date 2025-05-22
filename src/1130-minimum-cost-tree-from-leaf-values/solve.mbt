///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

///|
fn mct_from_leaf_values(arr : Array[Int]) -> Int {
  let n = arr.length()
  // Initialize f and g matrices
  let f : Array[Array[Int]] = Array::make(n, Array::make(n, 0))
  let g : Array[Array[Int]] = Array::make(n, Array::make(n, 0))
  for i = n - 1; i >= 0; i = i - 1 {
    g[i][i] = arr[i]
    for j = i + 1; j < n; j = j + 1 {
      g[i][j] = max(g[i][j - 1], arr[j])
    }
  }
  fn dfs(i : Int, j : Int) -> Int {
    if i == j {
      return 0
    }
    if f[i][j] > 0 {
      return f[i][j]
    }
    let mut ans = @int.max_value
    for k = i; k < j; k = k + 1 {
      ans = min(ans, dfs(i, k) + dfs(k + 1, j) + g[i][k] * g[k + 1][j])
    }
    f[i][j] = ans
    ans
  }

  dfs(0, n - 1)
}
