test "example 1" {
  let nums = [1, 2, 3, 2, 2, 1, 3]
  let k = 3
  let expected = [3, 2, 2, 2, 3]
  assert_eq!(distinct_numbers_in_each_subarray(nums, k), expected)
}

test "example 2" {
  let nums = [1, 1, 1, 1, 2, 3, 4]
  let k = 4
  let expected = [1, 2, 3, 4]
  assert_eq!(distinct_numbers_in_each_subarray(nums, k), expected)
}
