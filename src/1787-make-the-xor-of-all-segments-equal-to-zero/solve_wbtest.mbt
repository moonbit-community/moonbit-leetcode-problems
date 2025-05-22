test "example 1" {
  let nums = [1, 2, 0, 3, 0]
  let k = 1
  assert_eq!(min_changes(nums, k), 3)
}

test "example 2" {
  let nums = [3, 4, 5, 2, 1, 7, 3, 4, 7]
  let k = 3
  assert_eq!(min_changes(nums, k), 3)
}

test "example 3" {
  let nums = [1, 2, 4, 1, 2, 5, 1, 2, 6]
  let k = 3
  assert_eq!(min_changes(nums, k), 3)
}
