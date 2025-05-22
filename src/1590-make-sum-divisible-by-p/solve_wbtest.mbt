///|
test "example 1" {
  let nums = [3, 1, 4, 2]
  let p = 6
  assert_eq!(min_subarray(nums, p), 1)
}

///|
test "example 2" {
  let nums = [6, 3, 5, 2]
  let p = 9
  assert_eq!(min_subarray(nums, p), 2)
}

///|
test "example 3" {
  let nums = [1, 2, 3]
  let p = 3
  assert_eq!(min_subarray(nums, p), 0)
}

///|
test "example 4" {
  let nums = [1, 2, 3]
  let p = 7
  assert_eq!(min_subarray(nums, p), -1)
}
