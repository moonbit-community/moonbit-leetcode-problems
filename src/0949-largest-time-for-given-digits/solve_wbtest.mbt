///|
test "example 1" {
  assert_eq!(largest_time_from_digits([1, 2, 3, 4]), "23:41")
}

///|
test "example 2" {
  assert_eq!(largest_time_from_digits([5, 5, 5, 5]), "")
}

///|
test "example 3" {
  assert_eq!(largest_time_from_digits([0, 0, 0, 0]), "00:00")
}
