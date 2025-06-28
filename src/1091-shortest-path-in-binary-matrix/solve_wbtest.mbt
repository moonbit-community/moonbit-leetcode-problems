///|
test "example 1" {
  let grid = [[0, 1], [1, 0]]
  assert_eq(shortest_path_binary_matrix(grid), 2)
}

///|
test "example 2" {
  let grid = [[0, 0, 0], [1, 1, 0], [1, 1, 0]]
  assert_eq(shortest_path_binary_matrix(grid), 4)
}

///|
test "example 3" {
  let grid = [[1]]
  assert_eq(shortest_path_binary_matrix(grid), -1)
}
