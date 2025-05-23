///|
test "word break test 1" {
  let s = "leetcode"
  let word_dict = ["leet", "code"]
  assert_eq!(word_break(s, word_dict), true)
}

///|
test "word break test 2" {
  let s = "applepenapple"
  let word_dict = ["apple", "pen"]
  assert_eq!(word_break(s, word_dict), true)
}

///|
test "word break test 3" {
  let s = "catsandog"
  let word_dict = ["cats", "dog", "sand", "and", "cat"]
  assert_eq!(word_break(s, word_dict), false)
}
