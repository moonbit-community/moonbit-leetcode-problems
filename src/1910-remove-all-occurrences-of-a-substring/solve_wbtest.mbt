test "example 1" {
  let s = "daabcbaabcbc"
  let part = "abc"
  assert_eq!(remove_all_occurrences_of_substring(s, part), "dab")
}

test "example 2" {
  let s = "axxxxyyyyb"
  let part = "xy"
  assert_eq!(remove_all_occurrences_of_substring(s, part), "ab")
}

test "no occurrences" {
  let s = "hello"
  let part = "xyz"
  assert_eq!(remove_all_occurrences_of_substring(s, part), "hello")
}

test "entire string" {
  let s = "abcabc"
  let part = "abc"
  assert_eq!(remove_all_occurrences_of_substring(s, part), "")
}

test "partial match at end" {
  let s = "abcdabc"
  let part = "abc"
  assert_eq!(remove_all_occurrences_of_substring(s, part), "d")
}
