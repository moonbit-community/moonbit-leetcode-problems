test "example 1" {
  let nums = [1, 2, 3, 4, 5]
  let target = 5
  let start = 3
  assert_eq!(min_distance_to_target(nums, target, start), 1)
}

test "example 2" {
  let nums = [1]
  let target = 1
  let start = 0
  assert_eq!(min_distance_to_target(nums, target, start), 0)
}

test "example 3" {
  let nums = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
  let target = 1
  let start = 0
  assert_eq!(min_distance_to_target(nums, target, start), 0)
}
