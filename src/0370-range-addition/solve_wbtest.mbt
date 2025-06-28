///|
test "example 1" {
  assert_eq(get_modified_array(5, [[1, 3, 2], [2, 4, 3], [0, 2, -2]]), [
    0, 2, 1, 4, 3,
  ])
}

///|
test "example 2" {
  assert_eq(get_modified_array(10, [[2, 4, 6], [5, 6, 8], [1, 9, -4]]), [
    0, -4, 2, 8, 8, 4, 4, -4, -4, -4,
  ])
}
