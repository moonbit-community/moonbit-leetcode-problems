///|
test "example 1" {
  let nums1 = [2, 4, 5, 8, 10]
  let nums2 = [4, 6, 8, 9]
  assert_eq(max_sum(nums1, nums2), 30)
}

///|
test "example 2" {
  let nums1 = [1, 3, 5, 7, 9]
  let nums2 = [3, 5, 100]
  assert_eq(max_sum(nums1, nums2), 109)
}
