fn create_2d_array(m : Int, n : Int, init_val : Int) -> Array[Array[Int]] {
  Array::make(m, Array::make(n, init_val))
}

fn max_side_length(mat : Array[Array[Int]], threshold : Int) -> Int {
  let m = mat.length()
  let n = mat[0].length()
  let s = create_2d_array(m + 1, n + 1, 0)
  for i = 1; i <= m; i = i + 1 {
    for j = 1; j <= n; j = j + 1 {
      s[i][j] = s[i - 1][j] + s[i][j - 1] - s[i - 1][j - 1] + mat[i - 1][j - 1]
    }
  }
  fn check(
    k : Int,
    s : Array[Array[Int]],
    m : Int,
    n : Int,
    threshold : Int
  ) -> Bool {
    for i = 0; i < m - k + 1; i = i + 1 {
      for j = 0; j < n - k + 1; j = j + 1 {
        if s[i + k][j + k] - s[i + k][j] - s[i][j + k] + s[i][j] <= threshold {
          return true
        }
      }
    }
    false
  }

  let mut l = 0
  let mut r = if m < n { m } else { n }
  while l < r {
    let mid = (l + r + 1) / 2
    if check(mid, s, m, n, threshold) {
      l = mid
    } else {
      r = mid - 1
    }
  }
  l
}
