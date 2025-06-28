///|
test "example 1" {
  let matrix : Array[Array[Int]] = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]
  assert_eq(is_toeplitz_matrix(matrix), true)
}

///|
test "example 2" {
  let matrix : Array[Array[Int]] = [[1, 2], [2, 2]]
  assert_eq(is_toeplitz_matrix(matrix), false)
}
