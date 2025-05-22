///|
test "example 1" {
  assert_eq!(next_palindrome("1221"), "2112")
}

///|
test "example 2" {
  assert_eq!(next_palindrome("32123"), "")
}

///|
test "example 3" {
  assert_eq!(next_palindrome("45544554"), "54455445")
}
