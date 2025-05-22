test "example 1" {
  assert_eq!(min_number_of_operations_to_make_string_sorted("cba"), 5)
}

test "example 2" {
  assert_eq!(min_number_of_operations_to_make_string_sorted("aabaa"), 2)
}

test "example 3" {
  assert_eq!(min_number_of_operations_to_make_string_sorted("abc"), 0)
}

test "example 4" {
  assert_eq!(min_number_of_operations_to_make_string_sorted("dcba"), 6)
}
