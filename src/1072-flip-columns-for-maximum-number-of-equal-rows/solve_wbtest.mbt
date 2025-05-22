test "example 1" {
  let matrix : Array[Array[Int]] = [[0, 1], [1, 1]]
  assert_eq!(max_equal_rows_after_flips(matrix), 1)
}

test "example 2" {
  let matrix : Array[Array[Int]] = [[0, 0, 0], [0, 0, 1], [1, 1, 0]]
  assert_eq!(max_equal_rows_after_flips(matrix), 2)
}
