test "longest line in a matrix" {
  let matrix : Array[Array[Int]] = [[0, 1, 1, 0], [0, 1, 1, 0], [0, 0, 0, 1]]
  assert_eq!(longest_line(matrix), 3)
}

test "longest line in an empty matrix" {
  let matrix : Array[Array[Int]] = [[0]]
  assert_eq!(longest_line(matrix), 0)
}

test "longest line in a single cell matrix" {
  let matrix : Array[Array[Int]] = [[1]]
  assert_eq!(longest_line(matrix), 1)
}
