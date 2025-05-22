///|
test "example 1" {
  let nums = [9]
  let max_operations = 2
  assert_eq!(min_limit_of_balls_in_bag(nums, max_operations), 3)
}

///|
test "example 2" {
  let nums = [2, 4, 8, 2]
  let max_operations = 4
  assert_eq!(min_limit_of_balls_in_bag(nums, max_operations), 2)
}

///|
test "example 3" {
  let nums = [7, 17]
  let max_operations = 2
  assert_eq!(min_limit_of_balls_in_bag(nums, max_operations), 7)
}
