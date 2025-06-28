///|
test "example_1" {
  let mat = [[1, 4], [3, 2]]
  let result = find_peak_element_2d(mat)
  assert_eq(result, [0, 1])
}

///|
test "example_2" {
  let mat = [[10, 20, 15], [21, 30, 14], [7, 16, 32]]
  let result = find_peak_element_2d(mat)
  assert_eq(result, [1, 1])
}

///|
test "example_3" {
  let mat = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]]
  let result = find_peak_element_2d(mat)
  assert_eq(result, [2, 3])
}

///|
test "example_4" {
  let mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
  let result = find_peak_element_2d(mat)
  assert_eq(result, [3, 2])
}
