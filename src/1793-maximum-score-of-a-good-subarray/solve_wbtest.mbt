///|
test "example 1" {
  let nums = [1, 4, 3, 7, 4, 5]
  let k = 3
  assert_eq!(max_score_of_good_subarray(nums, k), 15)
}

///|
test "example 2" {
  let nums = [5, 5, 4, 5, 4, 1, 1, 1]
  let k = 0
  assert_eq!(max_score_of_good_subarray(nums, k), 20)
}

///|
test "example 3" {
  let nums = [1, 1, 1, 1, 1]
  let k = 2
  assert_eq!(max_score_of_good_subarray(nums, k), 3)
}

///|
test "example 4" {
  let nums = [2, 2, 2, 2, 2]
  let k = 2
  assert_eq!(max_score_of_good_subarray(nums, k), 6)
}

///|
test "example 5" {
  let nums = [1, 2, 3, 4, 5]
  let k = 2
  assert_eq!(max_score_of_good_subarray(nums, k), 9)
}
