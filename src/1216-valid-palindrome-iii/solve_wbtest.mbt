///|
test "example 1" {
  assert_eq(is_valid_palindrome("abcde", 2), false)
}

///|
test "example 2" {
  assert_eq(is_valid_palindrome("abcdcba", 1), true)
}

///|
test "example 3" {
  assert_eq(is_valid_palindrome("abccba", 1), true)
}
