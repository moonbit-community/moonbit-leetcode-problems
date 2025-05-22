test "example 1" {
  let nums1 = [1, 2]
  let nums2 = [2, 3]
  assert_eq!(min_xor_sum(nums1, nums2), 2)
}

test "example 2" {
  let nums1 = [1, 0, 3]
  let nums2 = [5, 3, 4]
  assert_eq!(min_xor_sum(nums1, nums2), 8)
}
