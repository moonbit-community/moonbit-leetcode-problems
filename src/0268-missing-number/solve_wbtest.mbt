///|
test "example 1" {
  let nums = [3, 0, 1]
  assert_eq!(missing_number(nums), 2)
}

///|
test "example 2" {
  let nums = [0, 1]
  assert_eq!(missing_number(nums), 2)
}

///|
test "example 3" {
  let nums = [9, 6, 4, 2, 3, 5, 7, 0, 1]
  assert_eq!(missing_number(nums), 8)
}
