test "example 1" {
  let nums = [2, -1, -4, -3]
  assert_eq!(max_subarray_sum_after_one_operation(nums), 17)
}

test "example 2" {
  let nums = [1, -1, 1, 1, -1, -1, 1]
  assert_eq!(max_subarray_sum_after_one_operation(nums), 4)
}

test "example 3" {
  let nums = [-2, 0, -1]
  assert_eq!(max_subarray_sum_after_one_operation(nums), 4)
}

test "example 4" {
  let nums = [5, -3, 5]
  assert_eq!(max_subarray_sum_after_one_operation(nums), 30)
}

test "example 5" {
  let nums = [-1, -2, -3]
  assert_eq!(max_subarray_sum_after_one_operation(nums), 9)
}
