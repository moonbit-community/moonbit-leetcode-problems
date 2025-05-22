test "example 1" {
  assert_eq!(num_identical_pairs([1, 2, 3, 1, 1, 3]), 4)
}

test "example 2" {
  assert_eq!(num_identical_pairs([1, 1, 1, 1]), 6)
}

test "example 3" {
  assert_eq!(num_identical_pairs([1, 2, 3]), 0)
}
