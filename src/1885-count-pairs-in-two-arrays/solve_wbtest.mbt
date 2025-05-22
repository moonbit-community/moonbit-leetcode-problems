///|
test "example 1" {
  let nums1 = [2, 1, 2, 1]
  let nums2 = [1, 2, 1, 2]
  assert_eq!(count_pairs_in_two_arrays(nums1, nums2), 1)
}

///|
test "example 2" {
  let nums1 = [1, 10, 6, 2]
  let nums2 = [1, 4, 1, 5]
  assert_eq!(count_pairs_in_two_arrays(nums1, nums2), 5)
}
