///|
test "example 1" {
  assert_eq!(angle_clock(12, 30), 165.0)
}

///|
test "example 2" {
  assert_eq!(angle_clock(3, 30), 75.0)
}

///|
test "example 3" {
  assert_eq!(angle_clock(3, 15), 7.5)
}

///|
test "example 4" {
  assert_eq!(angle_clock(4, 50), 155.0)
}

///|
test "example 5" {
  assert_eq!(angle_clock(12, 0), 0.0)
}
