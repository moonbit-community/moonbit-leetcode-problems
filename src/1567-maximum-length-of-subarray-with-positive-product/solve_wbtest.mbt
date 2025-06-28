///|
test "example 1" {
  let nums = [1, -2, -3, 4]
  assert_eq(get_max_len(nums), 3)
}

///|
test "example 2" {
  let nums = [0, 1, -2, -3, -4]
  assert_eq(get_max_len(nums), 3)
}

///|
test "example 3" {
  let nums = [-1, -2, -3, 0, 1]
  assert_eq(get_max_len(nums), 2)
}
