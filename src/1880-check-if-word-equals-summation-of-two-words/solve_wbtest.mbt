///|
test "example_1" {
  let first_word = "acb"
  let second_word = "cba"
  let target_word = "cdb"
  assert_eq(
    check_if_word_equals_summation_of_two_words(
      first_word, second_word, target_word,
    ),
    true,
  )
}

///|
test "example_2" {
  let first_word = "aaa"
  let second_word = "a"
  let target_word = "aab"
  assert_eq(
    check_if_word_equals_summation_of_two_words(
      first_word, second_word, target_word,
    ),
    false,
  )
}

///|
test "example_3" {
  let first_word = "aaa"
  let second_word = "a"
  let target_word = "aaaa"
  assert_eq(
    check_if_word_equals_summation_of_two_words(
      first_word, second_word, target_word,
    ),
    true,
  )
}
