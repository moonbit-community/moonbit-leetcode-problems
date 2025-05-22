///|
test "example 1" {
  // Test case setup
  let nums1 : Array[Int] = [1, 2, 3, 2, 1]
  let nums2 : Array[Int] = [3, 2, 1, 4, 7]
  let expected : Int = 3
  assert_eq!(find_length(nums1, nums2), expected)
}

///|
test "example 2" {
  // Test case setup
  let nums1 : Array[Int] = [0, 0, 0, 0, 0]
  let nums2 : Array[Int] = [0, 0, 0, 0, 0]
  let expected : Int = 5
  assert_eq!(find_length(nums1, nums2), expected)
}
