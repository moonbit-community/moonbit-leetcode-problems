///|
test "example 1" {
  let obstacle_grid : Array[Array[Int]] = [[0, 0, 0], [0, 1, 0], [0, 0, 0]]
  assert_eq!(unique_paths_with_obstacles(obstacle_grid), 2)
}

///|
test "example 2" {
  let obstacle_grid : Array[Array[Int]] = [[0, 1], [0, 0]]
  assert_eq!(unique_paths_with_obstacles(obstacle_grid), 1)
}
