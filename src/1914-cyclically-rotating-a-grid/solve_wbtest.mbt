test "example_1" {
  let grid = [[40, 10], [30, 20]]
  let k = 1
  let expected = [[10, 20], [40, 30]]
  assert_eq!(rotate_grid(grid, k), expected)
}

test "example_2" {
  let grid = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
  let k = 2
  let expected = [[3, 4, 8, 12], [2, 11, 10, 16], [1, 7, 6, 15], [5, 9, 13, 14]]
  assert_eq!(rotate_grid(grid, k), expected)
}
