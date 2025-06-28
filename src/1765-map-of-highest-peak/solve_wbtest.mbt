///|
test "example 1" {
  let is_water = [[0, 1], [0, 0]]
  let expected = [[1, 0], [2, 1]]
  assert_eq(map_of_highest_peak(is_water), expected)
}

///|
test "example 2" {
  let is_water = [[0, 0, 1], [1, 0, 0], [0, 0, 0]]
  let expected = [[1, 1, 0], [0, 1, 1], [1, 2, 2]]
  assert_eq(map_of_highest_peak(is_water), expected)
}
