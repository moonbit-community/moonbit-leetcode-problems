///|
test "example 1" {
  assert_eq!(min_add_to_make_valid("())"), 1)
}

///|
test "example 2" {
  assert_eq!(min_add_to_make_valid("((("), 3)
}

///|
test "example 3" {
  assert_eq!(min_add_to_make_valid("()"), 0)
}

///|
test "example 4" {
  assert_eq!(min_add_to_make_valid("()))(("), 4)
}
