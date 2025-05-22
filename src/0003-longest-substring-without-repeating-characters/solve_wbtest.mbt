///|
test "example 1" {
  assert_eq!(longest_substring_without_repeating_characters("abcabcbb"), 3)
}

///|
test "example 2" {
  assert_eq!(longest_substring_without_repeating_characters("bbbbb"), 1)
}

///|
test "example 3" {
  assert_eq!(longest_substring_without_repeating_characters("pwwkew"), 3)
}

///|
test "empty string" {
  assert_eq!(longest_substring_without_repeating_characters(""), 0)
}

///|
test "unique characters" {
  assert_eq!(longest_substring_without_repeating_characters("abcdef"), 6)
}
