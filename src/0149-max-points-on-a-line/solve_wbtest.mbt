test "example 1" {
  let points : Array[Array[Int]] = [[1, 1], [2, 2], [3, 3]]
  assert_eq!(max_points(points), 3)
}

test "example 2" {
  let points : Array[Array[Int]] = [
    [1, 1],
    [3, 2],
    [5, 3],
    [4, 1],
    [2, 3],
    [1, 4],
  ]
  assert_eq!(max_points(points), 4)
}
