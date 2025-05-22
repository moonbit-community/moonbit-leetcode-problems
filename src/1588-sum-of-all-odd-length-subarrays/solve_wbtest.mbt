test "example 1" {
  let arr = [1, 4, 2, 5, 3]
  let expected = 58
  assert_eq!(sum_odd_length_subarrays(arr), expected)
}

test "example 2" {
  let arr = [1, 2]
  let expected = 3
  assert_eq!(sum_odd_length_subarrays(arr), expected)
}

test "example 3" {
  let arr = [10, 11, 12]
  let expected = 66
  assert_eq!(sum_odd_length_subarrays(arr), expected)
}
