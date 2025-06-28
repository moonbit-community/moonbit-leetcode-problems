///|
test "example 1" {
  let arr = [4, 2, 1, 3]
  let expected = [[1, 2], [2, 3], [3, 4]]
  assert_eq(minimum_abs_difference(arr), expected)
}

///|
test "example 2" {
  let arr = [1, 3, 6, 10, 15]
  let expected = [[1, 3]]
  assert_eq(minimum_abs_difference(arr), expected)
}

///|
test "example 3" {
  let arr = [3, 8, -10, 23, 19, -4, -14, 27]
  let expected = [[-14, -10], [19, 23], [23, 27]]
  assert_eq(minimum_abs_difference(arr), expected)
}
