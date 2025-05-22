test "example 1" {
  let nums1 = [3, 2, 2, 3]
  let val1 = 3
  let result1 = remove_element(nums1, val1)
  assert_eq!(result1, 2)
}

test "example 2" {
  let nums2 = [0, 1, 2, 2, 3, 0, 4, 2]
  let val2 = 2
  let result2 = remove_element(nums2, val2)
  assert_eq!(result2, 5)
}

// Additional test cases

test "no removal needed" {
  let nums = [1, 3, 4, 5]
  let val = 6
  let result = remove_element(nums, val)
  assert_eq!(result, 4)
}

test "remove all elements" {
  let nums = [2, 2, 2]
  let val = 2
  let result = remove_element(nums, val)
  assert_eq!(result, 0)
}
