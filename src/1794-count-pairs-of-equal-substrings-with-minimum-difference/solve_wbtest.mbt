///|
test "example 1" {
  let first_string = "abcd"
  let second_string = "bccda"
  assert_eq(
    count_pairs_of_equal_substrings_with_minimum_difference(
      first_string, second_string,
    ),
    1,
  )
}

///|
test "example 2" {
  let first_string = "ab"
  let second_string = "cd"
  assert_eq(
    count_pairs_of_equal_substrings_with_minimum_difference(
      first_string, second_string,
    ),
    0,
  )
}

///|
test "example 3" {
  let first_string = "aab"
  let second_string = "baa"
  assert_eq(
    count_pairs_of_equal_substrings_with_minimum_difference(
      first_string, second_string,
    ),
    2,
  )
}
