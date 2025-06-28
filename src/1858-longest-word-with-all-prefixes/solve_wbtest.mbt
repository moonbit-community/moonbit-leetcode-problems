///|
test "example 1" {
  let words = Array::make(5, "")
  words[0] = "k "
  words[1] = "ki "
  words[2] = "kir "
  words[3] = "kira "
  words[4] = "kiran "
  assert_eq(longest_word_with_all_prefixes(words), "kiran ")
}

///|
test "example 2" {
  let words = Array::make(7, "")
  words[0] = "a "
  words[1] = "banana "
  words[2] = "app "
  words[3] = "appl "
  words[4] = "ap "
  words[5] = "apply "
  words[6] = "apple "
  assert_eq(longest_word_with_all_prefixes(words), "apple ")
}

///|
test "example 3" {
  let words = Array::make(4, "")
  words[0] = "abc "
  words[1] = "bc "
  words[2] = "ab "
  words[3] = "qwe "
  assert_eq(longest_word_with_all_prefixes(words), " ")
}
