///|
test "example 1" {
  let nums = [6, 10, 3]
  assert_eq!(number_of_different_subsequences_gcds(nums), 5)
}

///|
test "example 2" {
  let nums = [5, 15, 40, 5, 6]
  assert_eq!(number_of_different_subsequences_gcds(nums), 7)
}
