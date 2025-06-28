///|
test "example 1" {
  assert_eq(find_poisoned_duration([1, 4], 2), 3)
}

///|
test "example 2" {
  assert_eq(find_poisoned_duration([1, 2], 2), 3)
}
