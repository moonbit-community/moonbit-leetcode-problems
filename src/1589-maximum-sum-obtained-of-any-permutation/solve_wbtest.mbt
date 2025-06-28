///|
test "example 1" {
  let nums = [1, 2, 3, 4, 5]
  let requests = [[1, 3], [0, 1]]
  assert_eq(max_sum_range_query(nums, requests), 19)
}

///|
test "example 2" {
  let nums = [1, 2, 3, 4, 5, 6]
  let requests = [[0, 1]]
  assert_eq(max_sum_range_query(nums, requests), 8)
}

///|
test "example 3" {
  let nums = [1, 2, 3, 4, 5, 10]
  let requests = [[0, 2], [1, 3], [1, 1]]
  assert_eq(max_sum_range_query(nums, requests), 47)
}
