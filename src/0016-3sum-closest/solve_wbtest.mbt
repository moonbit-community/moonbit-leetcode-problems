///|
test "example 1" {
  let nums = [-1, 2, 1, -4]
  let target = 1
  assert_eq!(three_sum_closest(nums, target), 2)
}

///|
test "example 2" {
  let nums = [0, 0, 0]
  let target = 1
  assert_eq!(three_sum_closest(nums, target), 0)
}

///|
test "example 3" {
  let nums = [1, 1, 1, 1]
  let target = -100
  assert_eq!(three_sum_closest(nums, target), 3)
}

///|
test "example 4" {
  let nums = [1, 2, 4, 8, 16, 32, 64, 128]
  let target = 82
  assert_eq!(three_sum_closest(nums, target), 82)
}
