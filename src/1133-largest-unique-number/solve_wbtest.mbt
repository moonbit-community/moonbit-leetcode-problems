///|
test "example 1" {
  assert_eq!(largest_unique_number([5, 7, 3, 9, 4, 9, 8, 3, 1]), 8)
}

///|
test "example 2" {
  assert_eq!(largest_unique_number([9, 9, 8, 8]), -1)
}

///|
test "example 3" {
  assert_eq!(largest_unique_number([2, 2, 3, 3, 4]), 4)
}
