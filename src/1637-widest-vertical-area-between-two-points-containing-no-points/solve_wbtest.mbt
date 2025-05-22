///|
test "example 1" {
  let points : Array[(Int, Int)] = [(8, 7), (9, 9), (7, 4), (9, 7)]
  assert_eq!(max_width_of_vertical_area(points), 2)
}

///|
test "example 2" {
  let points : Array[(Int, Int)] = [
    (3, 1),
    (9, 0),
    (1, 0),
    (1, 4),
    (5, 3),
    (8, 8),
  ]
  assert_eq!(max_width_of_vertical_area(points), 5)
}
