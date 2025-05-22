test "example 1" {
  assert_eq!(is_self_crossing([2, 1, 1, 2]), true)
}

test "example 2" {
  assert_eq!(is_self_crossing([1, 2, 3, 4]), false)
}

test "example 3" {
  assert_eq!(is_self_crossing([1, 1, 1, 1]), true)
}
