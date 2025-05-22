///|
test "example 1" {
  let nums = [5, -7, 3, 5]
  let goal = 6
  assert_eq!(closest_subsequence_sum(nums, goal), 0)
}

///|
test "example 2" {
  let nums = [7, -9, 15, -2]
  let goal = -5
  assert_eq!(closest_subsequence_sum(nums, goal), 1)
}

///|
test "example 3" {
  let nums = [1, 2, 3]
  let goal = -7
  assert_eq!(closest_subsequence_sum(nums, goal), 7)
}
