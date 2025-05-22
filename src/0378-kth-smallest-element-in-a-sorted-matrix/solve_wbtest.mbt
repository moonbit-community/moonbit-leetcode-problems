///|
test "kth smallest element in a matrix" {
  let matrix : Array[Array[Int]] = [[1, 5, 9], [10, 11, 13], [12, 13, 15]]
  let result = kth_smallest(matrix, 8)
  assert_eq!(result, 13)
}

///|
test "kth smallest element in a matrix 2" {
  let matrix : Array[Array[Int]] = [[1, 2], [1, 3]]
  let result = kth_smallest(matrix, 2)
  assert_eq!(result, 1)
}
