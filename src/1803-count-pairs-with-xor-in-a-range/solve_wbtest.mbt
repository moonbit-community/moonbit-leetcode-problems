///|
test "example 1" {
  let nums = [1, 4, 2, 7]
  let low = 2
  let high = 6
  assert_eq(count_pairs_with_xor_in_range(nums, low, high), 6)
}

///|
test "example 2" {
  let nums = [9, 8, 4, 2, 1]
  let low = 5
  let high = 14
  assert_eq(count_pairs_with_xor_in_range(nums, low, high), 8)
}

///|
test "example 3" {
  let nums = [1, 2, 3, 4, 5]
  let low = 0
  let high = 10
  assert_eq(count_pairs_with_xor_in_range(nums, low, high), 10)
}

///|
test "example 4" {
  let nums = [1, 1, 1, 1]
  let low = 0
  let high = 1
  assert_eq(count_pairs_with_xor_in_range(nums, low, high), 6)
}

///|
test "example 5" {
  let nums = [2, 4, 8, 16]
  let low = 10
  let high = 20
  assert_eq(count_pairs_with_xor_in_range(nums, low, high), 2)
}
