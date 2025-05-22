///|
test "example 1" {
  let grid : Array[Array[Int]] = [[1, 3, 1], [1, 5, 1], [4, 2, 1]]
  assert_eq!(min_path_sum(grid), 9)
}
