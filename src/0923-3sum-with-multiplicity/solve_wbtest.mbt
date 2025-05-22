///|
test "example 1" {
  assert_eq!(three_sum_multi([1, 1, 2, 2, 3, 3, 4, 4, 5, 5], 8), 20)
}

///|
test "example 2" {
  assert_eq!(three_sum_multi([1, 1, 2, 2, 2, 2], 5), 12)
}

///|
test "example 3" {
  assert_eq!(three_sum_multi([1, 1, 1], 3), 1)
}
