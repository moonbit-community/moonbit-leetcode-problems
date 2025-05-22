///|
fn rotate_matrix(mat : Array[Array[Int]]) -> Array[Array[Int]] {
  let n = mat.length()
  let rotated = Array::make(n, Array::make(n, 0))
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      rotated[j][n - 1 - i] = mat[i][j]
    }
  }
  rotated
}

///|
fn matrices_equal(mat1 : Array[Array[Int]], mat2 : Array[Array[Int]]) -> Bool {
  let n = mat1.length()
  for i = 0; i < n; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if mat1[i][j] != mat2[i][j] {
        return false
      }
    }
  }
  true
}

///|
fn can_obtain_by_rotation(
  mat : Array[Array[Int]],
  target : Array[Array[Int]]
) -> Bool {
  let mut current = mat
  for _i = 0; _i < 4; _i = _i + 1 {
    if matrices_equal(current, target) {
      return true
    }
    current = rotate_matrix(current)
  }
  false
}

// Test cases
