test "example 1" {
  assert_eq!(can_jump([2, 3, 1, 1, 4]), true)
}

test "example 2" {
  assert_eq!(can_jump([3, 2, 1, 0, 4]), false)
}

test "example 3" {
  assert_eq!(can_jump([0]), true)
}

test "example 4" {
  assert_eq!(can_jump([2, 0]), true)
}
