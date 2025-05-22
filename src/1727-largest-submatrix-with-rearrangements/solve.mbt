///|
fn largest_submatrix(matrix : Array[Array[Int]]) -> Int {
  let m = matrix.length()
  let n = matrix[0].length()
  let heights = Array::make(m, Array::make(n, 0))

  // Step 1: Transform the matrix to heights matrix
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      if matrix[i][j] == 1 {
        heights[i][j] = if i == 0 { 1 } else { heights[i - 1][j] + 1 }
      }
    }
  }
  let mut max_area = 0

  // Step 2: Sort each row and calculate the maximum area
  for i = 0; i < m; i = i + 1 {
    heights[i].sort()
    for j = 0; j < n; j = j + 1 {
      let height = heights[i][j]
      let width = n - j
      let area = height * width
      if area > max_area {
        max_area = area
      }
    }
  }
  max_area
}

// Test cases
