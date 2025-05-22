test "example 1" {
  assert_eq!(bag_of_tokens_score([100, 200, 300, 400], 200), 2)
}

test "example 2" {
  assert_eq!(bag_of_tokens_score([100], 50), 0)
}

test "example 3" {
  assert_eq!(bag_of_tokens_score([100, 200], 150), 1)
}
