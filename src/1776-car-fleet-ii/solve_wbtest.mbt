///|
test "example 1" {
  let cars = [[1, 2], [2, 1], [4, 3], [7, 2]]
  let expected = [1.00000, -1.00000, 3.00000, -1.00000]
  assert_eq!(car_fleet_ii(cars), expected)
}

///|
test "example 2" {
  let cars = [[3, 4], [5, 4], [6, 3], [9, 1]]
  let expected = [2.00000, 1.00000, 1.50000, -1.00000]
  assert_eq!(car_fleet_ii(cars), expected)
}
