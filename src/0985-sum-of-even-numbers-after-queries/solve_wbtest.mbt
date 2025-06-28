///|
test "example 1" {
  let nums = [1, 2, 3, 4]
  let queries = [[1, 0], [-3, 1], [-4, 0], [2, 3]]
  assert_eq(sum_even_after_queries(nums, queries), [8, 6, 2, 4])
}

///|
test "example 2" {
  let nums = [1]
  let queries = [[4, 0]]
  assert_eq(sum_even_after_queries(nums, queries), [0])
}
