///|
test "example 1" {
  let row_sum : Array[Int] = [3, 8]
  let col_sum : Array[Int] = [4, 7]
  let expected : Array[Array[Int]] = [[3, 0], [1, 7]]
  assert_eq!(restore_matrix(row_sum, col_sum), expected)
}

///|
test "example 2" {
  let row_sum : Array[Int] = [5, 7, 10]
  let col_sum : Array[Int] = [8, 6, 8]
  let expected : Array[Array[Int]] = [[5, 0, 0], [3, 4, 0], [0, 2, 8]]
  assert_eq!(restore_matrix(row_sum, col_sum), expected)
}
