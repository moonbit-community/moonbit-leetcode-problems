///|
test "example 1" {
  let nums1 = [1, 2, 3, 4, 5, 6]
  let nums2 = [1, 1, 2, 2, 2, 2]
  assert_eq!(min_operations(nums1, nums2), 3)
}

///|
test "example 2" {
  let nums1 = [1, 1, 1, 1, 1, 1, 1]
  let nums2 = [6]
  assert_eq!(min_operations(nums1, nums2), -1)
}

///|
test "example 3" {
  let nums1 = [6, 6]
  let nums2 = [1]
  assert_eq!(min_operations(nums1, nums2), 3)
}
