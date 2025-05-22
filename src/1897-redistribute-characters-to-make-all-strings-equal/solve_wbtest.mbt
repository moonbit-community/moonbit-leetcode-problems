///|
test "example_1" {
  let words = ["abc", "aabc", "bc"]
  assert_eq!(can_make_equal(words), true)
}

///|
test "example_2" {
  let words = ["ab", "a"]
  assert_eq!(can_make_equal(words), false)
}

///|
test "all_equal" {
  let words = ["aaa", "aaa", "aaa"]
  assert_eq!(can_make_equal(words), true)
}

///|
test "impossible_case" {
  let words = ["abc", "def"]
  assert_eq!(can_make_equal(words), false)
}

///|
test "single_word" {
  let words = ["a"]
  assert_eq!(can_make_equal(words), true)
}
