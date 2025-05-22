test "example 1" {
  assert_eq!(min_window("ADOBECODEBANC", "ABC"), "BANC")
}

test "example 2" {
  assert_eq!(min_window("a", "a"), "a")
}

test "example 3" {
  assert_eq!(min_window("a", "aa"), "")
}
