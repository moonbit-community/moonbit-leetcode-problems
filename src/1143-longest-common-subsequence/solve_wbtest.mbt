test "example 1" {
  assert_eq!(longest_common_subsequence("abcde", "ace"), 3)
}

test "example 2" {
  assert_eq!(longest_common_subsequence("abc", "abc"), 3)
}

test "example 3" {
  assert_eq!(longest_common_subsequence("abc", "def"), 0)
}
