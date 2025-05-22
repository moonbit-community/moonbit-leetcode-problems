test "example 1" {
  let nums = [1, -3, 2, 3, -4]
  assert_eq!(max_absolute_sum(nums), 5)
}

test "example 2" {
  let nums = [2, -5, 1, -4, 3, -2]
  assert_eq!(max_absolute_sum(nums), 8)
}

test "example 3" {
  let nums = [-1, 2, -3, 4, -5]
  assert_eq!(max_absolute_sum(nums), 5)
}

test "example 4" {
  let nums = [1, 2, 3, 4, 5]
  assert_eq!(max_absolute_sum(nums), 15)
}

test "example 5" {
  let nums = [-2, -3, -1, -4, -6]
  assert_eq!(max_absolute_sum(nums), 16)
}
