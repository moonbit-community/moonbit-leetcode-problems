test "example 1" {
  let nums = [2, 7, 11, 15]
  let target = 9
  assert_eq!(two_sum(nums, target), [0, 1])
}

test "example 2" {
  let nums = [3, 2, 4]
  let target = 6
  assert_eq!(two_sum(nums, target), [1, 2])
}

test "example 3" {
  let nums = [3, 3]
  let target = 6
  assert_eq!(two_sum(nums, target), [0, 1])
}
