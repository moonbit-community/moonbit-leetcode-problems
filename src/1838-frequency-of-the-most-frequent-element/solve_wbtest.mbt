test "example 1" {
  let nums = [1, 2, 4]
  let k = 5
  assert_eq!(max_frequency(nums, k), 3)
}

test "example 2" {
  let nums = [1, 4, 8, 13]
  let k = 5
  assert_eq!(max_frequency(nums, k), 2)
}

test "example 3" {
  let nums = [3, 9, 6]
  let k = 2
  assert_eq!(max_frequency(nums, k), 1)
}
