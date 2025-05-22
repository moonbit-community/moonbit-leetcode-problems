test "find min in rotated sorted array" {
  let nums1 : Array[Int] = [3, 4, 5, 1, 2]
  assert_eq!(find_min(nums1), 1)
  let nums2 : Array[Int] = [4, 5, 6, 7, 0, 1, 2]
  assert_eq!(find_min(nums2), 0)
  let nums3 : Array[Int] = [11, 13, 15, 17]
  assert_eq!(find_min(nums3), 11)
}
