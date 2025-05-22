test "example 1" {
  assert_eq!(valid_utf8([197, 130, 1]), true)
}

test "example 2" {
  assert_eq!(valid_utf8([235, 140, 4]), false)
}
