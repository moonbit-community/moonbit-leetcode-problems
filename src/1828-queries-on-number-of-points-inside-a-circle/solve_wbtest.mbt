///|
test "example 1" {
  let points = [(1, 3), (3, 3), (5, 3), (2, 2)]
  let queries = [(2, 3, 1), (4, 3, 1), (1, 1, 2)]
  let expected = [3, 2, 2]
  assert_eq!(count_points_inside_circles(points, queries), expected)
}

///|
test "example 2" {
  let points = [(1, 1), (2, 2), (3, 3), (4, 4), (5, 5)]
  let queries = [(1, 2, 2), (2, 2, 2), (4, 3, 2), (4, 3, 3)]
  let expected = [2, 3, 2, 4]
  assert_eq!(count_points_inside_circles(points, queries), expected)
}
