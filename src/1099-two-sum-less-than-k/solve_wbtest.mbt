///|
test "example 1" {
  let nums = [34, 23, 1, 24, 75, 33, 54, 8]
  let k = 60
  assert_eq(two_sum_less_than_k(nums, k), 58)
}

///|
test "example 2" {
  let nums = [10, 20, 30]
  let k = 15
  assert_eq(two_sum_less_than_k(nums, k), -1)
}
