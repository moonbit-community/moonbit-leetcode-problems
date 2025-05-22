test "example 1" {
  assert_eq!(num_k_len_substr_no_repeats("havefunonleetcode", 5), 6)
}

test "example 2" {
  assert_eq!(num_k_len_substr_no_repeats("home", 5), 0)
}

test "example 3" {
  assert_eq!(num_k_len_substr_no_repeats("abcd", 4), 1)
}
