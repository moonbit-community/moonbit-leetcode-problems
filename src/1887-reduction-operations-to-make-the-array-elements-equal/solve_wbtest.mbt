test "example_1" {
  let nums = [5, 1, 3]
  assert_eq!(reduction_operations(nums), 3)
}

test "example_2" {
  let nums = [1, 1, 1]
  assert_eq!(reduction_operations(nums), 0)
}

test "example_3" {
  let nums = [1, 1, 2, 2, 3]
  assert_eq!(reduction_operations(nums), 4)
}
