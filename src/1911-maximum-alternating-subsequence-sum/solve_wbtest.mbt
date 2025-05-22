test "example 1" {
  let nums = [4, 2, 5, 3]
  assert_eq!(max_alternating_subsequence_sum(nums), 7)
}

test "example 2" {
  let nums = [5, 6, 7, 8]
  assert_eq!(max_alternating_subsequence_sum(nums), 8)
}

test "example 3" {
  let nums = [6, 2, 1, 2, 4, 5]
  assert_eq!(max_alternating_subsequence_sum(nums), 10)
}
