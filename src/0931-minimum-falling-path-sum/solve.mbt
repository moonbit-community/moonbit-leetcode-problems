fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}

fn min_falling_path_sum(matrix : Array[Array[Int]]) -> Int {
  let n = matrix.length()
  let mut f : Array[Int] = Array::make(n, 0)
  let mut row_index = 0
  while row_index < n {
    let row = matrix[row_index]
    let g : Array[Int] = Array::copy(f)
    let mut j = 0
    while j < n {
      if j > 0 {
        g[j] = min(g[j], f[j - 1])
      }
      if j + 1 < n {
        g[j] = min(g[j], f[j + 1])
      }
      g[j] = g[j] + row[j]
      j = j + 1
    }
    f = g
    row_index = row_index + 1
  }
  let mut ans = @int.max_value
  let mut i = 0
  while i < n {
    ans = min(ans, f[i])
    i = i + 1
  }
  ans
}
