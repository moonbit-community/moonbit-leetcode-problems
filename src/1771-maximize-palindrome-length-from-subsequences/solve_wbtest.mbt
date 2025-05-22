///|
test "example 1" {
  assert_eq!(max_palindrome_length_from_subsequences("cacb", "cbba"), 5)
}

///|
test "example 2" {
  assert_eq!(max_palindrome_length_from_subsequences("ab", "ab"), 3)
}

///|
test "example 3" {
  assert_eq!(max_palindrome_length_from_subsequences("aa", "bb"), 0)
}
