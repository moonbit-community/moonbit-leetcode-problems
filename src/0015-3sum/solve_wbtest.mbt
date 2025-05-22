///|
test "example 1" {
  let nums = [-1, 0, 1, 2, -1, -4]
  let expected = [[-1, -1, 2], [-1, 0, 1]]
  let result = three_sum(nums)
  assert_eq!(result, expected)
}

///|
test "example 2" {
  let nums = [0, 1, 1]
  let expected = []
  let result = three_sum(nums)
  assert_eq!(result, expected)
}

///|
test "example 3" {
  let nums = [0, 0, 0]
  let expected = [[0, 0, 0]]
  let result = three_sum(nums)
  assert_eq!(result, expected)
}
