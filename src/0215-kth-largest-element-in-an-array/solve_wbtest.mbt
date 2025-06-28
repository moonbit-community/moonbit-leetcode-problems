///|
test "example 1" {
  let nums = [3, 2, 1, 5, 6, 4]
  let k = 2
  let kth_largest = find_kth_largest(nums, k)
  assert_eq(kth_largest, 5)
}

///|
test "example 2" {
  let nums = [3, 2, 3, 1, 2, 4, 5, 5, 6]
  let k = 4
  let kth_largest = find_kth_largest(nums, k)
  assert_eq(kth_largest, 4)
}
