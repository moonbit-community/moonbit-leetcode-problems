///|
test "example 1" {
  let nums1 = [1, 7, 5]
  let nums2 = [2, 3, 5]
  assert_eq(min_absolute_sum_diff(nums1, nums2), 3)
}

///|
test "example 2" {
  let nums1 = [2, 4, 6, 8, 10]
  let nums2 = [2, 4, 6, 8, 10]
  assert_eq(min_absolute_sum_diff(nums1, nums2), 0)
}

///|
test "example 3" {
  let nums1 = [1, 10, 4, 4, 2, 7]
  let nums2 = [9, 3, 5, 1, 7, 4]
  assert_eq(min_absolute_sum_diff(nums1, nums2), 20)
}
