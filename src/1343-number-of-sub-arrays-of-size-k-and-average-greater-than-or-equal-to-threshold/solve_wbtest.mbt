///|
test "example 1" {
  let arr = [2, 1, 3, 4, 1, 2, 3, 1, 4]
  let k = 3
  let threshold = 2
  assert_eq!(num_of_subarrays(arr, k, threshold), 5)
}

///|
test "example 2" {
  let arr = [1, 1, 1, 1, 1]
  let k = 1
  let threshold = 0
  assert_eq!(num_of_subarrays(arr, k, threshold), 5)
}

///|
test "example 3" {
  let arr = [11, 13, 17, 23, 29, 31, 7, 5, 2, 3]
  let k = 3
  let threshold = 5
  assert_eq!(num_of_subarrays(arr, k, threshold), 6)
}
