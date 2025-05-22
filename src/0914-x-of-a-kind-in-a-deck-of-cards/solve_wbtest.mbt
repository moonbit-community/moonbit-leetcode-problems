///|
test "example 1" {
  assert_eq!(has_groups_size_x([1, 2, 3, 4, 4, 3, 2, 1]), true)
}

///|
test "example 2" {
  assert_eq!(has_groups_size_x([1, 1, 1, 2, 2, 2, 3, 3]), false)
}

///|
test "example 3" {
  assert_eq!(has_groups_size_x([1]), false)
}
