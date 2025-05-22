///|
test "example 1" {
  let nums = [2, 1, 2]
  let expected = 5
  assert_eq!(largest_perimeter(nums), expected)
}

///|
test "example 2" {
  let nums = [1, 2, 1]
  let expected = 0
  assert_eq!(largest_perimeter(nums), expected)
}

///|
test "example 3" {
  let nums = [3, 2, 3, 4]
  let expected = 10
  assert_eq!(largest_perimeter(nums), expected)
}

///|
test "example 4" {
  let nums = [3, 6, 2, 3]
  let expected = 8
  assert_eq!(largest_perimeter(nums), expected)
}
