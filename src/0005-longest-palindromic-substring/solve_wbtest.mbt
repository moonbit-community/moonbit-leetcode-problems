///|
test "example 1" {
  assert_true!(longest_palindrome("babad") is ("bab" | "aba"))
}

///|
test "example 2" {
  assert_eq!(longest_palindrome("cbbd"), "bb")
}

///|
test "example 3" {
  assert_eq!(longest_palindrome("a"), "a")
}

///|
test "example 4" {
  assert_true!(longest_palindrome("ac") is ("a" | "c"))
}
