///|
fn set_zeroes(matrix : Array[Array[Int]]) -> Unit {
  let m = matrix.length()
  let n = matrix[0].length()
  let row = Array::make(m, false)
  let col = Array::make(n, false)
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if matrix[i][j] == 0 {
        row[i] = true
        col[j] = true
      }
    }
  }
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if row[i] || col[j] {
        matrix[i][j] = 0
      }
    }
  }
}
