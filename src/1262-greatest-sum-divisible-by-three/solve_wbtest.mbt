///|
test "example 1" {
  let nums = [3, 6, 5, 1, 8]
  assert_eq!(max_sum_div_three(nums), 24)
}

///|
test "example 2" {
  let nums = [4]
  assert_eq!(max_sum_div_three(nums), 0)
}

///|
test "example 3" {
  let nums = [1, 2, 3, 4, 4]
  assert_eq!(max_sum_div_three(nums), 24)
}
