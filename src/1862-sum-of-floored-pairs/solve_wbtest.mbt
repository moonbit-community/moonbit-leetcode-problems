///|
test "example 1" {
  let nums = [2, 5, 9]
  assert_eq!(sum_of_floored_pairs(nums), 10)
}

///|
test "example 2" {
  let nums = [7, 7, 7, 7, 7, 7, 7]
  assert_eq!(sum_of_floored_pairs(nums), 49)
}
