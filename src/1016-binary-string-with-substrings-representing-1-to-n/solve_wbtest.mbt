///|
test "example 1" {
  assert_eq!(query_string("0110", 3), true)
}

///|
test "example 2" {
  assert_eq!(query_string("0110", 4), false)
}

///|
test "example 3" {
  assert_eq!(query_string("1111000101", 10), false)
}
