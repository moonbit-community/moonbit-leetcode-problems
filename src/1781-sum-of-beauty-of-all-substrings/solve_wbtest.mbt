test "example 1" {
  assert_eq!(sum_of_beauty_of_all_substrings("aabcb"), 5)
}

test "example 2" {
  assert_eq!(sum_of_beauty_of_all_substrings("aabcbaa"), 17)
}

test "example 3" {
  assert_eq!(sum_of_beauty_of_all_substrings("abc"), 1)
}

test "example 4" {
  assert_eq!(sum_of_beauty_of_all_substrings("aa"), 2)
}

test "example 5" {
  assert_eq!(sum_of_beauty_of_all_substrings("a"), 0)
}
