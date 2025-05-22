///|
test "example 1" {
  assert_eq!(merge_strings_alternately("abc", "pqr"), "apbqcr")
}

///|
test "example 2" {
  assert_eq!(merge_strings_alternately("ab", "pqrs"), "apbqrs")
}

///|
test "example 3" {
  assert_eq!(merge_strings_alternately("abcd", "pq"), "apbqcd")
}
