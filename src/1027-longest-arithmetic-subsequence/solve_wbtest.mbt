test "example 1" {
  let nums = [3, 6, 9, 12]
  assert_eq!(longest_arith_seq_length(nums), 4)
}

test "example 2" {
  let nums = [9, 4, 7, 2, 10]
  assert_eq!(longest_arith_seq_length(nums), 3)
}

test "example 3" {
  let nums = [20, 1, 15, 3, 10, 5, 8]
  assert_eq!(longest_arith_seq_length(nums), 4)
}
