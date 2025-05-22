test "example 1" {
  assert_eq!(min_length_after_deleting_similar_ends("ca"), 2)
}

test "example 2" {
  assert_eq!(min_length_after_deleting_similar_ends("cabaabac"), 0)
}

test "example 3" {
  assert_eq!(min_length_after_deleting_similar_ends("aabccabba"), 3)
}
