///|
test "example 1" {
  let mat : Array[Array[Int]] = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
  let expected : Array[Array[Int]] = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
  assert_eq(updateMatrix(mat), expected)
}

///|
test "example 2" {
  let mat : Array[Array[Int]] = [[0, 0, 0], [0, 1, 0], [1, 1, 1]]
  let expected : Array[Array[Int]] = [[0, 0, 0], [0, 1, 0], [1, 2, 1]]
  assert_eq(updateMatrix(mat), expected)
}
