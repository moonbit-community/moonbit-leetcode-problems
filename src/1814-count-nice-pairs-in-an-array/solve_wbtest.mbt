///|
test "example 1" {
  let nums = [42, 11, 1, 97]
  assert_eq!(count_nice_pairs(nums), 2)
}

///|
test "example 2" {
  let nums = [13, 10, 35, 24, 76]
  assert_eq!(count_nice_pairs(nums), 4)
}

///|
test "example 3" {
  let nums = [1, 1, 1, 1]
  assert_eq!(count_nice_pairs(nums), 6)
}

///|
test "example 4" {
  let nums = [123, 321, 456, 654]
  assert_eq!(count_nice_pairs(nums), 2)
}
