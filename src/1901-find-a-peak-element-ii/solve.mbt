fn find_peak_element_2d(mat : Array[Array[Int]]) -> Array[Int] {
  let m = mat.length()
  let n = mat[0].length()
  fn find_max_in_column(mat : Array[Array[Int]], col : Int) -> (Int, Int) {
    let mut max_val = mat[0][col]
    let mut max_row = 0
    for i = 1; i < mat.length(); i = i + 1 {
      if mat[i][col] > max_val {
        max_val = mat[i][col]
        max_row = i
      }
    }
    (max_row, max_val)
  }

  fn find_peak(mat : Array[Array[Int]], left : Int, right : Int) -> Array[Int] {
    let mid = (left + right) / 2
    let (max_row, max_val) = find_max_in_column(mat, mid)
    if (mid == 0 || mat[max_row][mid - 1] < max_val) && (mid == n - 1 || mat[max_row][mid +
    1] < max_val) {
      return [max_row, mid]
    } else if mid > 0 && mat[max_row][mid - 1] > max_val {
      return find_peak(mat, left, mid - 1)
    } else {
      return find_peak(mat, mid + 1, right)
    }
  }

  find_peak(mat, 0, n - 1)
}

// Test cases
