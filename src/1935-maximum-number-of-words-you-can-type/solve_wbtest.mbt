///|
test "example 1" {
  let text = "hello world"
  let broken_letters = "ad"
  assert_eq(max_number_of_words_you_can_type(text, broken_letters), 1)
}

///|
test "example 2" {
  let text = "leet code"
  let broken_letters = "lt"
  assert_eq(max_number_of_words_you_can_type(text, broken_letters), 1)
}

///|
test "example 3" {
  let text = "leet code"
  let broken_letters = "e"
  assert_eq(max_number_of_words_you_can_type(text, broken_letters), 0)
}
