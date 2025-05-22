///|
test "example 1" {
  let grid : Array[Array[Int]] = [[1, 0, 1], [0, 0, 0], [1, 0, 1]]
  assert_eq!(max_distance(grid), 2)
}

///|
test "example 2" {
  let grid : Array[Array[Int]] = [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
  assert_eq!(max_distance(grid), 4)
}
