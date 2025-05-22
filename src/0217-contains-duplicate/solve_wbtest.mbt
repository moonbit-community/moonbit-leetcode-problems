test "example 1" {
  let nums = [1, 2, 3, 1]
  let expected = true
  let result = contains_duplicate(nums)
  assert_eq!(result, expected)
}

test "example 2" {
  let nums = [1, 2, 3, 4]
  let expected = false
  let result = contains_duplicate(nums)
  assert_eq!(result, expected)
}

test "example 3" {
  let nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
  let expected = true
  let result = contains_duplicate(nums)
  assert_eq!(result, expected)
}
