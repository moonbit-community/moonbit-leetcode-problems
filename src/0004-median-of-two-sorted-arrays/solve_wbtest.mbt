///|
test "example 1" {
  let nums1 = [1, 3]
  let nums2 = [2]
  assert_eq!(find_median_sorted_arrays(nums1, nums2), 2.0)
}

///|
test "example 2" {
  let nums1 = [1, 2]
  let nums2 = [3, 4]
  assert_eq!(find_median_sorted_arrays(nums1, nums2), 2.5)
}

///|
test "example 3" {
  let nums1 = []
  let nums2 = [1]
  assert_eq!(find_median_sorted_arrays(nums1, nums2), 1.0)
}

///|
test "example 4" {
  let nums1 = [1, 2]
  let nums2 = [-1, 3]
  assert_eq!(find_median_sorted_arrays(nums1, nums2), 1.5)
}
