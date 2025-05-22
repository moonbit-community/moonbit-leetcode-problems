test "example 1" {
  assert_eq!(count_homogenous_substrings("abbcccaa"), 13)
}

test "example 2" {
  assert_eq!(count_homogenous_substrings("xy"), 2)
}

test "example 3" {
  assert_eq!(count_homogenous_substrings("zzzzz"), 15)
}
