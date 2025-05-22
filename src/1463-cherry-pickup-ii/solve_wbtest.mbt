///|
test "example 1" {
  let grid = [[0, 1, -1], [1, 0, -1], [1, 1, 1]]
  assert_eq!(cherry_pickup(grid), 5)
}

///|
test "example 2" {
  let grid = [[1, 1], [1, 1]]
  assert_eq!(cherry_pickup(grid), 4)
}
