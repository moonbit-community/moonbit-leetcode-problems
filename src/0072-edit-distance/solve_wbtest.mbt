///|
test "example 1" {
  assert_eq!(edit_distance("horse", "ros"), 3)
}

///|
test "example 2" {
  assert_eq!(edit_distance("intention", "execution"), 5)
}
