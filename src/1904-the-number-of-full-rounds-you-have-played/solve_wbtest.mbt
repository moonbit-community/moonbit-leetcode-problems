///|
test "example 1" {
  assert_eq!(count_full_rounds_string!("09:31", "10:14"), 1)
}

///|
test "example 2" {
  assert_eq!(count_full_rounds_string!("21:30", "03:00"), 22)
}

///|
test "example 3" {
  assert_eq!(count_full_rounds_string!("00:00", "00:14"), 0)
}

///|
test "example 4" {
  assert_eq!(count_full_rounds_string!("00:00", "00:15"), 1)
}

///|
test "example 5" {
  assert_eq!(count_full_rounds_string!("23:46", "00:00"), 0)
}
