///|
test "example 1" {
  let nums = [1, 2]
  assert_eq(max_score(nums), 1)
}

///|
test "example 2" {
  let nums = [3, 4, 6, 8]
  assert_eq(max_score(nums), 11)
}

///|
test "example 3" {
  let nums = [1, 2, 3, 4, 5, 6]
  assert_eq(max_score(nums), 14)
}
