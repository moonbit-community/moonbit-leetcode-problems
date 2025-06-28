///|
test "example_1" {
  let s = "aabca"
  assert_eq(unique_length_3_palindromic_subsequences(s), 3)
}

///|
test "example_2" {
  let s = "adc"
  assert_eq(unique_length_3_palindromic_subsequences(s), 0)
}

///|
test "example_3" {
  let s = "bbcbaba"
  assert_eq(unique_length_3_palindromic_subsequences(s), 4)
}
