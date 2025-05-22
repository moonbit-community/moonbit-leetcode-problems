test "example 1" {
  let points : Array[Array[Int]] = [[1, 1], [3, 4], [-1, 0]]
  let expected = 7
  assert_eq!(min_time_to_visit_all_points(points), expected)
}

test "example 2" {
  let points : Array[Array[Int]] = [[3, 2], [-2, 2]]
  let expected = 5
  assert_eq!(min_time_to_visit_all_points(points), expected)
}
