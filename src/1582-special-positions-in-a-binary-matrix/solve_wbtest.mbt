///|
test "example 1" {
  let mat : Array[Array[Int]] = [[1, 0, 0], [0, 0, 1], [1, 0, 0]]
  assert_eq(num_special(mat), 1)
}

///|
test "example 2" {
  let mat : Array[Array[Int]] = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
  assert_eq(num_special(mat), 3)
}
