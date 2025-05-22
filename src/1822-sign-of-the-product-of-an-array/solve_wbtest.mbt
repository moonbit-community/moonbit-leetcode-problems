///|
test "example 1" {
  let nums = [-1, -2, -3, -4, 3, 2, 1]
  assert_eq!(array_sign(nums), 1)
}

///|
test "example 2" {
  let nums = [1, 5, 0, 2, -3]
  assert_eq!(array_sign(nums), 0)
}

///|
test "example 3" {
  let nums = [-1, 1, -1, 1, -1]
  assert_eq!(array_sign(nums), -1)
}
