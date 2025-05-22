///|
test "example 1" {
  let nums = [2, 1, 3]
  let k = 4
  assert_eq!(kth_smallest_subarray_sum(nums, k), 3)
}

///|
test "example 2" {
  let nums = [3, 3, 5, 5]
  let k = 7
  assert_eq!(kth_smallest_subarray_sum(nums, k), 10)
}
