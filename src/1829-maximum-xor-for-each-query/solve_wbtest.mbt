///|
test "example 1" {
  let nums = [0, 1, 1, 3]
  let maximum_bit = 2
  let expected = [0, 3, 2, 3]
  assert_eq(maximum_xor_for_each_query(nums, maximum_bit), expected)
}

///|
test "example 2" {
  let nums = [2, 3, 4, 7]
  let maximum_bit = 3
  let expected = [5, 2, 6, 5]
  assert_eq(maximum_xor_for_each_query(nums, maximum_bit), expected)
}

///|
test "example 3" {
  let nums = [0, 1, 2, 2, 5, 7]
  let maximum_bit = 3
  let expected = [4, 3, 6, 4, 6, 7]
  assert_eq(maximum_xor_for_each_query(nums, maximum_bit), expected)
}
