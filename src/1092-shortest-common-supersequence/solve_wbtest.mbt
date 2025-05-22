///|
test "example 1" {
  assert_eq!(shortest_common_supersequence("abc", "ac"), "abc")
}

///|
test "example 2" {
  assert_eq!(shortest_common_supersequence("abac", "cab"), "cabac")
}
