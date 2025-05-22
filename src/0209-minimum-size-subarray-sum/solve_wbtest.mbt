///|
test "example 1" {
  let target = 7
  let nums = [2, 3, 1, 2, 4, 3]
  let result = min_sub_array_len(target, nums)
  assert_eq!(result, 2)
}

///|
test "example 2" {
  let target = 4
  let nums = [1, 4, 4]
  let result = min_sub_array_len(target, nums)
  assert_eq!(result, 1)
}

///|
test "example 3" {
  let target = 11
  let nums = [1, 1, 1, 1, 1, 1, 1, 1]
  let result = min_sub_array_len(target, nums)
  assert_eq!(result, 0)
}
