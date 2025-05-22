///|
test "example 1" {
  assert_eq!(length_of_longest_substring("abcabcbb"), 3)
}

///|
test "example 2" {
  assert_eq!(length_of_longest_substring("bbbbb"), 1)
}

///|
test "example 3" {
  assert_eq!(length_of_longest_substring("pwwkew"), 3)
}

///|
test "empty string" {
  assert_eq!(length_of_longest_substring(""), 0)
}

///|
test "unique characters" {
  assert_eq!(length_of_longest_substring("abcdef"), 6)
}
