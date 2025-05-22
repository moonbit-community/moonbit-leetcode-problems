///|
test "example 1" {
  let trips = [(2, 1, 5), (3, 3, 7)]
  let capacity = 4
  assert_eq!(car_pooling(trips, capacity), false)
}

///|
test "example 2" {
  let trips = [(2, 1, 5), (3, 5, 7)]
  let capacity = 3
  assert_eq!(car_pooling(trips, capacity), true)
}
