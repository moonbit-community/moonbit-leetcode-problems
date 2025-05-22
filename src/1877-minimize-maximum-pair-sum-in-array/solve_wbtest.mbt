///|
test "example 1" {
  let nums = [3, 5, 2, 3]
  assert_eq!(minimize_maximum_pair_sum(nums), 7)
}

///|
test "example 2" {
  let nums = [3, 5, 4, 2, 4, 6]
  assert_eq!(minimize_maximum_pair_sum(nums), 8)
}

///|
test "example 3" {
  let nums = [1, 1, 1, 1]
  assert_eq!(minimize_maximum_pair_sum(nums), 2)
}

///|
test "example 4" {
  let nums = [10, 10, 10, 10, 10, 10]
  assert_eq!(minimize_maximum_pair_sum(nums), 20)
}

///|
test "example 5" {
  let nums = [1, 2, 3, 4, 5, 6]
  assert_eq!(minimize_maximum_pair_sum(nums), 7)
}
