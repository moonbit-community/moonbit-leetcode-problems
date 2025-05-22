test "example 1" {
  let nums1 : Array[Int] = [1, 4, 2]
  let nums2 : Array[Int] = [1, 2, 4]
  assert_eq!(max_uncrossed_lines(nums1, nums2), 2)
}

test "example 2" {
  let nums1 : Array[Int] = [2, 5, 1, 2, 5]
  let nums2 : Array[Int] = [10, 5, 2, 1, 5, 2]
  assert_eq!(max_uncrossed_lines(nums1, nums2), 3)
}

test "example 3" {
  let nums1 : Array[Int] = [1, 3, 7, 1, 7, 5]
  let nums2 : Array[Int] = [1, 9, 2, 5, 1]
  assert_eq!(max_uncrossed_lines(nums1, nums2), 2)
}
