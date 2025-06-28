///|
test "example 1" {
  let grid = [[5, 4, 5], [1, 2, 6], [7, 4, 6]]
  assert_eq(maximum_minimum_path(grid), 4)
}

///|
test "example 2" {
  let grid = [[2, 2, 1, 2, 2, 2], [1, 2, 2, 2, 1, 2]]
  assert_eq(maximum_minimum_path(grid), 2)
}
