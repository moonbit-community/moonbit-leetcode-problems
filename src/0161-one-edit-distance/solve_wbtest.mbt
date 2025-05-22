///|
test "example 1" {
  assert_eq!(is_one_edit_distance("ab", "acb"), true)
}

///|
test "example 2" {
  assert_eq!(is_one_edit_distance("", ""), false)
}

///|
test "example 3" {
  assert_eq!(is_one_edit_distance("a", ""), true)
}
