///|
test "example 1" {
  assert_eq(distinct_subseq_ii("abc"), 7) // Possible subsequences are "", "a", "b", "c", "ab", "ac", "bc", "abc"
}

///|
test "example 2" {
  assert_eq(distinct_subseq_ii("aba"), 6) // Possible subsequences are "", "a", "b", "ab", "aa", "aba"
}

///|
test "example 3" {
  assert_eq(distinct_subseq_ii("aaa"), 3) // Possible subsequences are "", "a", "aa", "aaa"
}
