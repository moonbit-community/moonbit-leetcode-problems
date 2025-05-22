///|
test "example 1" {
  let grid : Array[Array[Int]] = [[1, 0, 0, 0], [0, 0, 0, 0], [0, 0, 2, -1]]
  assert_eq!(unique_paths_iii(grid), 2)
}

///|
test "example 2" {
  let grid : Array[Array[Int]] = [[1, -1], [0, 2]]
  assert_eq!(unique_paths_iii(grid), 0)
}
