///|
test "example1" {
  let result = reverse_words("the sky is blue")
  let expect = "blue is sky the"
  assert_eq!(result, expect)
}

///|
test "example2" {
  let result = reverse_words("  hello world  ")
  let expect = "world hello"
  assert_eq!(result, expect)
}

///|
test "example3" {
  let result = reverse_words("a good   example")
  let expect = "example good a"
  assert_eq!(result, expect)
}
