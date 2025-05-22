///|
test "example 1" {
  let nums = [3, 1, 2, 4]
  let expected = [2, 4, 3, 1] // Note: multiple valid outputs possible
  assert_eq!(sort_array_by_parity(nums), expected)
}

///|
test "example 2" {
  let nums = [0]
  let expected = [0]
  assert_eq!(sort_array_by_parity(nums), expected)
}
