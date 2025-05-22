///|
test "example_1" {
  let nums = [3, 4, 5, 1, 2]
  assert_eq!(is_sorted_and_rotated(nums), true)
}

///|
test "example_2" {
  let nums = [2, 1, 3, 4]
  assert_eq!(is_sorted_and_rotated(nums), false)
}

///|
test "example_3" {
  let nums = [1, 2, 3]
  assert_eq!(is_sorted_and_rotated(nums), true)
}

///|
test "example_4" {
  let nums = [1, 1, 1]
  assert_eq!(is_sorted_and_rotated(nums), true)
}

///|
test "example_5" {
  let nums = [2, 2, 2, 1, 2, 2]
  assert_eq!(is_sorted_and_rotated(nums), true)
}

///|
test "example_6" {
  let nums = [2, 2, 2, 1, 2, 1]
  assert_eq!(is_sorted_and_rotated(nums), false)
}
