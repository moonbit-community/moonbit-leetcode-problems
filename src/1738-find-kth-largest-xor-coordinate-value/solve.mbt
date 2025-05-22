///|
fn kth_largest_xor_coordinate_value(matrix : Array[Array[Int]], k : Int) -> Int {
  let m = matrix.length()
  let n = matrix[0].length()
  let xor_values = Array::new()

  // Compute the XOR values for each coordinate
  for i = 0; i < m; i = i + 1 {
    for j = 0; j < n; j = j + 1 {
      let mut xor_value = 0
      for a = 0; a <= i; a = a + 1 {
        for b = 0; b <= j; b = b + 1 {
          xor_value = xor_value ^ matrix[a][b]
        }
      }
      xor_values.push(xor_value)
    }
  }

  // Sort the XOR values in descending order
  xor_values.sort_by(fn(a, b) { b - a })

  // Return the kth largest value
  xor_values[k - 1]
}

// Test cases
