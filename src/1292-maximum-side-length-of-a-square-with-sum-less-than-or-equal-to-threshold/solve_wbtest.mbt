///|
test "example 1" {
  let mat : Array[Array[Int]] = [
    [1, 1, 3, 2, 4, 3, 2],
    [1, 1, 3, 2, 4, 3, 2],
    [1, 1, 3, 2, 4, 3, 2],
  ]
  let threshold = 4
  assert_eq(max_side_length(mat, threshold), 2)
}

///|
test "example 2" {
  let mat : Array[Array[Int]] = [
    [2, 2, 2, 2, 2],
    [2, 2, 2, 2, 2],
    [2, 2, 2, 2, 2],
    [2, 2, 2, 2, 2],
    [2, 2, 2, 2, 2],
  ]
  let threshold = 1
  assert_eq(max_side_length(mat, threshold), 0)
}
