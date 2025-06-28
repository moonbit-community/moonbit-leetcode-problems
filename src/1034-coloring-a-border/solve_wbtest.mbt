///|
test "example 1" {
  let grid = [[1, 1], [1, 2]]
  let row = 0
  let col = 0
  let color = 3
  let expected = [[3, 3], [3, 2]]
  assert_eq(color_border(grid, row, col, color), expected)
}

///|
test "example 2" {
  let grid = [[1, 2, 2], [2, 3, 2]]
  let row = 0
  let col = 1
  let color = 3
  let expected = [[1, 3, 3], [2, 3, 3]]
  assert_eq(color_border(grid, row, col, color), expected)
}
