///|
test "example 1" {
  let nums = [4, 2, 4, 5, 6]
  assert_eq(maximum_unique_subarray(nums), 17)
}

///|
test "example 2" {
  let nums = [5, 2, 1, 2, 5, 2, 1, 2, 5]
  assert_eq(maximum_unique_subarray(nums), 8)
}
