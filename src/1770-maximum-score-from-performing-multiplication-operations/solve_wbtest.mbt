test "example 1" {
  let nums = [1, 2, 3]
  let multipliers = [3, 2, 1]
  assert_eq!(max_score(nums, multipliers), 14)
}

test "example 2" {
  let nums = [-5, -3, -3, -2, 7, 1]
  let multipliers = [-10, -5, 3, 4, 6]
  assert_eq!(max_score(nums, multipliers), 102)
}
