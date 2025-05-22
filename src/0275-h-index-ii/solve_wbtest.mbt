test "example 1" {
  let citations1 = [0, 1, 3, 5, 6]
  let result1 = h_index(citations1)
  assert_eq!(result1, 3)
}

test "example 2" {
  let citations2 = [1, 2, 100]
  let result2 = h_index(citations2)
  assert_eq!(result2, 2)
}
