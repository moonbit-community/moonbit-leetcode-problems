test "example_1" {
  let points = Array::make(3, Array::make(3, 0))
  points[0] = [1, 2, 3]
  points[1] = [1, 5, 1]
  points[2] = [3, 1, 1]
  assert_eq!(max_number_of_points_with_cost(points), 9)
}

test "example_2" {
  let points = Array::make(3, Array::make(2, 0))
  points[0] = [1, 5]
  points[1] = [2, 3]
  points[2] = [4, 2]
  assert_eq!(max_number_of_points_with_cost(points), 11)
}
