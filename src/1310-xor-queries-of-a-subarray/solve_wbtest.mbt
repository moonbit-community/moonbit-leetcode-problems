///|
test "example 1" {
  let arr = [1, 3, 4, 8]
  let queries = [(0, 1), (1, 2), (0, 3), (3, 3)]
  let expected = [2, 7, 14, 8]
  assert_eq!(xor_queries(arr, queries), expected)
}

///|
test "example 2" {
  let arr = [4, 8, 2, 10]
  let queries = [(2, 3), (1, 3), (0, 0), (0, 3)]
  let expected = [8, 0, 4, 4]
  assert_eq!(xor_queries(arr, queries), expected)
}
