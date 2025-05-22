fn search_matrix(matrix : Array[Array[Int]], target : Int) -> Bool {
  let m = matrix.length()
  let n = matrix[0].length()
  let mut low = 0
  let mut high = m * n - 1
  while low <= high {
    let mid = (high - low) / 2 + low
    let x = matrix[mid / n][mid % n]
    if x < target {
      low = mid + 1
    } else if x > target {
      high = mid - 1
    } else {
      return true
    }
  }
  false
}
