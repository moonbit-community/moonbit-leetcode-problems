///|
test "example 1" {
  assert_eq!(can_make_equal_with_one_swap("bank", "kanb"), true)
}

///|
test "example 2" {
  assert_eq!(can_make_equal_with_one_swap("attack", "defend"), false)
}

///|
test "example 3" {
  assert_eq!(can_make_equal_with_one_swap("kelb", "kelb"), true)
}

///|
test "example 4" {
  assert_eq!(can_make_equal_with_one_swap("abcd", "badc"), false)
}

///|
test "example 5" {
  assert_eq!(can_make_equal_with_one_swap("ab", "ba"), true)
}
