///|
test "example 1" {
  let matrix = [[5, 2], [1, 6]]
  let k = 1
  assert_eq(kth_largest_xor_coordinate_value(matrix, k), 7)
}

///|
test "example 2" {
  let matrix = [[5, 2], [1, 6]]
  let k = 2
  assert_eq(kth_largest_xor_coordinate_value(matrix, k), 5)
}

///|
test "example 3" {
  let matrix = [[5, 2], [1, 6]]
  let k = 3
  assert_eq(kth_largest_xor_coordinate_value(matrix, k), 4)
}
