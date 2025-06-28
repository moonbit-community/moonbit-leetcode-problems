///|
test "example 1" {
  let word1 : Array[String] = ["ab", "c"]
  let word2 : Array[String] = ["a", "bc"]
  assert_eq(array_strings_are_equal(word1, word2), true)
}

///|
test "example 2" {
  let word1 : Array[String] = ["a", "cb"]
  let word2 : Array[String] = ["ab", "c"]
  assert_eq(array_strings_are_equal(word1, word2), false)
}

///|
test "example 3" {
  let word1 : Array[String] = ["abc", "d", "defg"]
  let word2 : Array[String] = ["abcddefg"]
  assert_eq(array_strings_are_equal(word1, word2), true)
}
