///|
fn search_matrix(matrix : Array[Array[Int]], target : Int) -> Bool {
  let n = matrix[0].length()
  let mut row_index = 0
  while row_index < matrix.length() {
    let row = matrix[row_index]
    let mut left = 0
    let mut right = n
    while left < right {
      let mid = (left + right) / 2
      if row[mid] >= target {
        right = mid
      } else {
        left = mid + 1
      }
    }
    if left != n && row[left] == target {
      return true
    }
    row_index = row_index + 1
  }
  false
}
