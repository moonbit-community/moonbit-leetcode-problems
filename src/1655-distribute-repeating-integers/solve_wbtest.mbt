///|
test "example 1" {
  let nums = [1, 2, 3, 4]
  let quantity = [2, 4]
  assert_eq!(can_distribute(nums, quantity), false)
}

///|
test "example 2" {
  let nums = [1, 2, 3, 4, 5]
  let quantity = [2, 4]
  assert_eq!(can_distribute(nums, quantity), true)
}
