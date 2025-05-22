test "example 1" {
  assert_eq!(longest_decomposition("ghiabcdefhelloadamhelloabcdefghi"), 7)
}

test "example 2" {
  assert_eq!(longest_decomposition("merchant"), 1)
}

test "example 3" {
  assert_eq!(longest_decomposition("antaprezatepzapreanta"), 11)
}

test "example 4" {
  assert_eq!(longest_decomposition("aaa"), 3)
}
