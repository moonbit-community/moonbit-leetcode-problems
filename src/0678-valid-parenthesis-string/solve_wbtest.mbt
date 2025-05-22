test "example 1" {
  assert_eq!(check_valid_string("(*)"), true)
}

test "example 2" {
  assert_eq!(check_valid_string("(*))"), true)
}

test "example 3" {
  assert_eq!(check_valid_string("(()"), false)
}
