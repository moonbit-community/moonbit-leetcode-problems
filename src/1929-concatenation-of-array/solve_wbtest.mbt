test "example 1" {
  let nums = [1, 2, 1]
  let expected = [1, 2, 1, 1, 2, 1]
  assert_eq!(concatenate_array(nums), expected)
}

test "example 2" {
  let nums = [1, 3, 2, 1]
  let expected = [1, 3, 2, 1, 1, 3, 2, 1]
  assert_eq!(concatenate_array(nums), expected)
}

test "single element array" {
  let nums = [5]
  let expected = [5, 5]
  assert_eq!(concatenate_array(nums), expected)
}

test "large array" {
  let nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  let expected = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  assert_eq!(concatenate_array(nums), expected)
}
