///|
test "example 1" {
  let grid : Array[Array[Int]] = [[0, 0, 1], [1, 1, 0], [1, 0, 0]]
  assert_eq(min_swaps(grid), 3)
}

///|
test "example 2" {
  let grid : Array[Array[Int]] = [[0, 1, 0], [1, 0, 0], [0, 0, 1]]
  assert_eq(min_swaps(grid), 0)
}

///|
test "example 3" {
  let grid : Array[Array[Int]] = [[1, 0, 0], [1, 1, 0], [1, 1, 1]]
  assert_eq(min_swaps(grid), -1)
}
