///|
test "example 1" {
  let nums = [2, 3, 5]
  let expected = [4, 3, 5]
  assert_eq(get_sum_absolute_differences(nums), expected)
}

///|
test "example 2" {
  let nums = [1, 4, 6, 8]
  let expected = [18, 11, 14, 19]
  assert_eq(get_sum_absolute_differences(nums), expected)
}
