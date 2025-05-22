///|
test "example 1" {
  let nums = [1, 2, 3, 2]
  assert_eq!(sum_of_unique_elements(nums), 4)
}

///|
test "example 2" {
  let nums = [1, 1, 1, 1, 1]
  assert_eq!(sum_of_unique_elements(nums), 0)
}

///|
test "example 3" {
  let nums = [1, 2, 3, 4, 5]
  assert_eq!(sum_of_unique_elements(nums), 15)
}
