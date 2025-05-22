///|
test "example 1" {
  let nums = [1, 3]
  assert_eq!(sum_of_all_subset_xor_totals(nums), 6)
}

///|
test "example 2" {
  let nums = [5, 1, 6]
  assert_eq!(sum_of_all_subset_xor_totals(nums), 28)
}

///|
test "example 3" {
  let nums = [3, 4, 5, 6, 7, 8]
  assert_eq!(sum_of_all_subset_xor_totals(nums), 480)
}
