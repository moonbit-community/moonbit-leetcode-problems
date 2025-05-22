///|
test "example 1" {
  let nums = [1, 2, 3, 1]
  let index_diff = 3
  let value_diff = 0
  let expected = true
  let result = contains_nearby_almost_duplicate(nums, index_diff, value_diff)
  assert_eq!(result, expected)
}

///|
test "example 2" {
  let nums = [1, 5, 9, 1, 5, 9]
  let index_diff = 2
  let value_diff = 3
  let expected = false
  let result = contains_nearby_almost_duplicate(nums, index_diff, value_diff)
  assert_eq!(result, expected)
}
