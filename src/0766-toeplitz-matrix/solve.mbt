///|
fn is_toeplitz_matrix(matrix : Array[Array[Int]]) -> Bool {
  let m = matrix.length()
  let n = matrix[0].length()
  let mut i = 1
  while i < m {
    let mut j = 1
    while j < n {
      if matrix[i][j] != matrix[i - 1][j - 1] {
        return false
      }
      j = j + 1
    }
    i = i + 1
  }
  true
}
