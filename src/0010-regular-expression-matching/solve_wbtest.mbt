test "example 1" {
  assert_eq!(is_match("aa", "a"), false)
}

test "example 2" {
  assert_eq!(is_match("aa", "a*"), true)
}

test "example 3" {
  assert_eq!(is_match("ab", ".*"), true)
}

test "example 4" {
  assert_eq!(is_match("aab", "c*a*b"), true)
}

test "example 5" {
  assert_eq!(is_match("mississippi", "mis*is*p*."), false)
}
