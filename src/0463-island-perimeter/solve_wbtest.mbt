///|
test "example 1" {
  let grid : Array[Array[Int]] = [
    [0, 1, 0, 0],
    [1, 1, 1, 0],
    [0, 1, 0, 0],
    [1, 1, 0, 0],
  ]
  assert_eq(island_perimeter(grid), 16)
}

///|
test "example 2" {
  let grid : Array[Array[Int]] = [[1]]
  assert_eq(island_perimeter(grid), 4)
}

///|
test "example 3" {
  let grid : Array[Array[Int]] = [[1, 0]]
  assert_eq(island_perimeter(grid), 4)
}
