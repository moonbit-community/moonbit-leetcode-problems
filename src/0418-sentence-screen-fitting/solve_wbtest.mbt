test "test case 1" {
  let sentence = ["hello", "world"]
  assert_eq!(words_typing(sentence, 2, 8), 1)
}

test "test case 2" {
  let sentence = ["a", "bcd", "e"]
  assert_eq!(words_typing(sentence, 3, 6), 2)
}

test "test case 3" {
  let sentence = ["I", "had", "apple", "pie"]
  assert_eq!(words_typing(sentence, 4, 5), 1)
}
