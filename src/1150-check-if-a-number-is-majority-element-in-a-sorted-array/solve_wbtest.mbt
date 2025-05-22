///|
test "example 1" {
  assert_eq!(is_majority_element([10, 100, 101, 101], 101), true)
}

///|
test "example 2" {
  assert_eq!(is_majority_element([10, 100, 101, 101], 100), false)
}

///|
test "example 3" {
  assert_eq!(is_majority_element([1, 2, 3, 3, 3, 4, 4], 3), true)
}
