///|
test "example 1" {
  let arr = [1, 15, 7, 9, 2, 5, 10]
  let k = 3
  assert_eq(max_sum_after_partitioning(arr, k), 84)
}

///|
test "example 2" {
  let arr = [1, 4, 1, 5, 7, 3, 6, 1, 9, 9, 3]
  let k = 4
  assert_eq(max_sum_after_partitioning(arr, k), 83)
}
