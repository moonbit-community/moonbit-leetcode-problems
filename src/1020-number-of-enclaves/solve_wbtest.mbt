///|
test "example 1" {
  let grid = [[0, 0, 0, 0], [1, 0, 1, 0], [0, 1, 1, 0], [0, 0, 0, 0]]
  assert_eq(num_enclaves(grid), 3)
}

///|
test "example 2" {
  let grid = [[0, 1, 1, 0], [1, 1, 1, 0], [0, 1, 1, 0], [0, 1, 0, 0]]
  assert_eq(num_enclaves(grid), 0)
}
