///|
fn char_to_numerical_value(c : Char) -> Int {
  c.to_int() - 'a'.to_int()
}

///|
fn word_to_numerical_value(word : String) -> Int {
  let mut numerical_value = 0
  for i = 0; i < word.length(); i = i + 1 {
    numerical_value = numerical_value * 10 + char_to_numerical_value(word[i])
  }
  numerical_value
}

///|
fn check_if_word_equals_summation_of_two_words(
  first_word : String,
  second_word : String,
  target_word : String
) -> Bool {
  let first_word_value = word_to_numerical_value(first_word)
  let second_word_value = word_to_numerical_value(second_word)
  let target_word_value = word_to_numerical_value(target_word)
  first_word_value + second_word_value == target_word_value
}

// Test cases
