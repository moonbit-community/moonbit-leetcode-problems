///|
test "example 1" {
  let nums = [1, 2, 3, 2]
  assert_eq(max_subarray_min_product(nums), 14)
}

///|
test "example 2" {
  let nums = [2, 3, 3, 1, 2]
  assert_eq(max_subarray_min_product(nums), 18)
}

///|
test "example 3" {
  let nums = [3, 1, 5, 6, 4, 2]
  assert_eq(max_subarray_min_product(nums), 60)
}
