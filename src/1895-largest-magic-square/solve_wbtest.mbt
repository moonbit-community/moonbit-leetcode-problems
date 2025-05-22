///|
test "example 1" {
  let grid = [
    [7, 1, 4, 5, 6],
    [2, 5, 1, 6, 4],
    [1, 5, 4, 3, 2],
    [1, 2, 7, 3, 4],
  ]
  assert_eq!(largest_magic_square(grid), 3)
}

///|
test "example 2" {
  let grid = [[5, 1, 3, 1], [9, 3, 3, 1], [1, 3, 3, 8]]
  assert_eq!(largest_magic_square(grid), 2)
}

///|
test "example 3" {
  let grid = [[1, 1], [1, 1]]
  assert_eq!(largest_magic_square(grid), 2)
}

///|
test "example 4" {
  let grid = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  assert_eq!(largest_magic_square(grid), 1)
}
