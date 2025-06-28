///|
test "example 1" {
  let nums = [1, 2, 5, 9]
  let threshold = 6
  assert_eq(smallest_divisor(nums, threshold), 5)
}

///|
test "example 2" {
  let nums = [2, 3, 5, 7, 11]
  let threshold = 11
  assert_eq(smallest_divisor(nums, threshold), 3)
}

///|
test "example 3" {
  let nums = [19]
  let threshold = 5
  assert_eq(smallest_divisor(nums, threshold), 4)
}
