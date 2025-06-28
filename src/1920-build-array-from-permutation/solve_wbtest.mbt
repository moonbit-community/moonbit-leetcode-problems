///|
test "example_1" {
  let nums = [0, 2, 1, 5, 3, 4]
  let expected = [0, 1, 2, 4, 5, 3]
  assert_eq(build_array_from_permutation(nums), expected)
}

///|
test "example_2" {
  let nums = [5, 0, 1, 2, 3, 4]
  let expected = [4, 5, 0, 1, 2, 3]
  assert_eq(build_array_from_permutation(nums), expected)
}

///|
test "single_element" {
  let nums = [0]
  let expected = [0]
  assert_eq(build_array_from_permutation(nums), expected)
}

///|
test "consecutive_elements" {
  let nums = [1, 0, 2]
  let expected = [0, 1, 2]
  assert_eq(build_array_from_permutation(nums), expected)
}
