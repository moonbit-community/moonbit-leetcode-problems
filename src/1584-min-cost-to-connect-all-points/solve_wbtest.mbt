///|
test "example 1" {
  let points : Array[(Int, Int)] = [(0, 0), (2, 2), (3, 10), (5, 2), (7, 0)]
  assert_eq!(min_cost_connect_points(points), 20)
}

///|
test "example 2" {
  let points : Array[(Int, Int)] = [(3, 12), (-2, 5), (-4, 1)]
  assert_eq!(min_cost_connect_points(points), 18)
}
