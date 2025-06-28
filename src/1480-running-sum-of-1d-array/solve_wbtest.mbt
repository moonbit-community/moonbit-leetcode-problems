///|
test "example 1" {
  let nums = [1, 2, 3, 4]
  let expected = [1, 3, 6, 10]
  assert_eq(running_sum(nums), expected)
}

///|
test "example 2" {
  let nums = [1, 1, 1, 1, 1]
  let expected = [1, 2, 3, 4, 5]
  assert_eq(running_sum(nums), expected)
}

///|
test "example 3" {
  let nums = [3, 1, 2, 10, 1]
  let expected = [3, 4, 6, 16, 17]
  assert_eq(running_sum(nums), expected)
}
