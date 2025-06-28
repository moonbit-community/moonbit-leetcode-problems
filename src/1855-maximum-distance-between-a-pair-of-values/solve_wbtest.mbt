///|
test "example 1" {
  let nums1 = [55, 30, 5, 4, 2]
  let nums2 = [100, 20, 10, 10, 5]
  assert_eq(max_distance(nums1, nums2), 2)
}

///|
test "example 2" {
  let nums1 = [2, 2, 2]
  let nums2 = [10, 10, 1]
  assert_eq(max_distance(nums1, nums2), 1)
}

///|
test "example 3" {
  let nums1 = [30, 29, 19, 5]
  let nums2 = [25, 25, 25, 25, 25]
  assert_eq(max_distance(nums1, nums2), 2)
}

///|
test "no valid pairs" {
  let nums1 = [100, 90, 80]
  let nums2 = [10, 20, 30]
  assert_eq(max_distance(nums1, nums2), 0)
}

///|
test "large arrays" {
  let nums1 = Array::make(100000, 1)
  let nums2 = Array::make(100000, 1)
  assert_eq(max_distance(nums1, nums2), 99999)
}
