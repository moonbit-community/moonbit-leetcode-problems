///|
test "example 1" {
  let nums = [1, 1, 1]
  assert_eq!(min_operations_to_make_array_increasing(nums), 3)
}

///|
test "example 2" {
  let nums = [1, 5, 2, 4, 1]
  assert_eq!(min_operations_to_make_array_increasing(nums), 14)
}

///|
test "example 3" {
  let nums = [8]
  assert_eq!(min_operations_to_make_array_increasing(nums), 0)
}

///|
test "additional example" {
  let nums = [3, 2, 1]
  assert_eq!(min_operations_to_make_array_increasing(nums), 3)
}

///|
test "empty array" {
  let nums = []
  assert_eq!(min_operations_to_make_array_increasing(nums), 0)
}
