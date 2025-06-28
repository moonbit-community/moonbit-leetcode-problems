///|
test "example_1" {
  let nums1 = [5, 3, 4, 2]
  let nums2 = [4, 2, 2, 5]
  assert_eq(minimize_product_sum(nums1, nums2), 40)
}

///|
test "example_2" {
  let nums1 = [2, 1, 4, 5, 7]
  let nums2 = [3, 2, 4, 8, 6]
  assert_eq(minimize_product_sum(nums1, nums2), 65)
}

///|
test "example_3" {
  let nums1 = [1, 2, 3, 4]
  let nums2 = [5, 2, 3, 1]
  assert_eq(minimize_product_sum(nums1, nums2), 21)
}

///|
test "example_4" {
  let nums1 = [1, 1, 1, 1]
  let nums2 = [1, 1, 1, 1]
  assert_eq(minimize_product_sum(nums1, nums2), 4)
}

///|
test "example_5" {
  let nums1 = [100]
  let nums2 = [100]
  assert_eq(minimize_product_sum(nums1, nums2), 10000)
}
