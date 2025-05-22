///|
test "example 1" {
  assert_eq!(is_palindrome(121), true)
}

///|
test "example 2" {
  assert_eq!(is_palindrome(-121), false)
}

///|
test "example 3" {
  assert_eq!(is_palindrome(10), false)
}

///|
test "example 4" {
  assert_eq!(is_palindrome(12321), true)
}

///|
test "example 5" {
  assert_eq!(is_palindrome(12345), false)
}
