///|
test "example 1" {
  let nums = [10, -5, -2, 4, 0, 3]
  let k = 3
  assert_eq(max_result(nums, k), 17)
}

///|
test "example 2" {
  let nums = [1, -1, -2, 4, -7, 3]
  let k = 2
  assert_eq(max_result(nums, k), 7)
}
