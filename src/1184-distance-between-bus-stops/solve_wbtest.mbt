///|
test "example 1" {
  let distance = [1, 2, 3, 4]
  let start = 0
  let destination = 3
  assert_eq!(distance_between_bus_stops(distance, start, destination), 4)
}

///|
test "example 2" {
  let distance = [1, 2, 3, 4]
  let start = 0
  let destination = 2
  assert_eq!(distance_between_bus_stops(distance, start, destination), 3)
}

///|
test "example 3" {
  let distance = [1, 2, 3, 4]
  let start = 3
  let destination = 0
  assert_eq!(distance_between_bus_stops(distance, start, destination), 1)
}
