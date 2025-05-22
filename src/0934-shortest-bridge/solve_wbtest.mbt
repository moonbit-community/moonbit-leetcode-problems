test "example" {
  let grid : Array[Array[Int]] = [[0, 1], [1, 0]]
  assert_eq!(shortest_bridge(grid), 1)
}
