test "example 1" {
  let nums1 : Array[Int] = [1, 3, 5, 7]
  let nums2 : Array[Int] = [1, 2, 3, 7]
  assert_eq!(min_swap(nums1, nums2), 1)
}

test "example 2" {
  let nums1 : Array[Int] = [0, 3, 5, 8, 9]
  let nums2 : Array[Int] = [2, 1, 4, 6, 9]
  assert_eq!(min_swap(nums1, nums2), 1)
}
