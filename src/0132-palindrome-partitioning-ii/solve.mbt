fn min_cut(s : String) -> Int {
  let n = s.length()
  // Initializing the grid `g`.
  let g : Array[Array[Bool]] = Array::make(n, Array::make(n, true))
  let mut i = n - 1
  while i >= 0 {
    let mut j = i + 1
    while j < n {
      g[i][j] = s[i] == s[j] && g[i + 1][j - 1]
      j = j + 1
    }
    i = i - 1
  }

  // Initialize the `f` array to store the minimum cut needed.
  let f : Array[Int] = Array::make(n, 0)
  // Pre-fill `f` with the maximum initial cuts
  for i = 0; i < n; i = i + 1 {
    f[i] = i
  }
  for i = 1; i < n; i = i + 1 {
    for j = 0; j <= i; j = j + 1 {
      if g[j][i] {
        if j > 0 {
          f[i] = min(f[i], 1 + f[j - 1])
        } else {
          f[i] = min(f[i], 0)
        }
      }
    }
  }
  f[n - 1]
}

fn min(x : Int, y : Int) -> Int {
  if x < y {
    x
  } else {
    y
  }
}
