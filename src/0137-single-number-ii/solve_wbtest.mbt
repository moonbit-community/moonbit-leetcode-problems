test "example 1" {
  let nums = [2, 2, 3, 2]
  let result = single_number(nums)
  assert_eq!(result, 3)
}

test "example 2" {
  let nums = [0, 1, 0, 1, 0, 1, 99]
  let result = single_number(nums)
  assert_eq!(result, 99)
}

test "example 3" {
  let nums = [3, 3, 3, 2]
  let result = single_number(nums)
  assert_eq!(result, 2)
}
