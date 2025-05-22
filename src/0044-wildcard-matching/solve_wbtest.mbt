test "example 1" {
  assert_eq!(is_match("aa", "a"), false)
}

test "example 2" {
  assert_eq!(is_match("aa", "*"), true)
}

test "example 3" {
  assert_eq!(is_match("cb", "?a"), false)
}

test "example 4" {
  assert_eq!(is_match("adceb", "*a*b"), true)
}

test "example 5" {
  assert_eq!(is_match("acdcb", "a*c?b"), false)
}
