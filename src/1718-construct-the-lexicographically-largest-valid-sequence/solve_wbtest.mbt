test "example 1" {
  let n = 3
  let expected = [3, 1, 2, 3, 2]
  assert_eq!(construct_lexicographically_largest_valid_sequence(n), expected)
}

test "example 2" {
  let n = 5
  let expected = [5, 3, 1, 4, 3, 5, 2, 4, 2]
  assert_eq!(construct_lexicographically_largest_valid_sequence(n), expected)
}

test "example 3" {
  let n = 1
  let expected = [1]
  assert_eq!(construct_lexicographically_largest_valid_sequence(n), expected)
}

test "example 4" {
  let n = 2
  let expected = [2, 1, 2]
  assert_eq!(construct_lexicographically_largest_valid_sequence(n), expected)
}
