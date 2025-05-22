fn num_special(mat : Array[Array[Int]]) -> Int {
  let m = mat.length()
  let n = mat[0].length()
  let rows = Array::make(m, 0)
  let cols = Array::make(n, 0)
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if mat[i][j] == 1 {
        rows[i] = rows[i] + 1
        cols[j] = cols[j] + 1
      }
    }
  }
  let mut res = 0
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if mat[i][j] == 1 && rows[i] == 1 && cols[j] == 1 {
        res = res + 1
      }
    }
  }
  res
}
