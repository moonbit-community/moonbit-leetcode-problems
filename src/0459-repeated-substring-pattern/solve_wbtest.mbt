test "example 1" {
  assert_eq!(repeated_substring_pattern("abab"), true)
}

test "example 2" {
  assert_eq!(repeated_substring_pattern("aba"), false)
}

test "example 3" {
  assert_eq!(repeated_substring_pattern("abcabcabcabc"), true)
}
