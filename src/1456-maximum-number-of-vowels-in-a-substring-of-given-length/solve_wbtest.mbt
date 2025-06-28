///|
test "example 1" {
  assert_eq(max_vowels("abciiidef", 3), 3)
}

///|
test "example 2" {
  assert_eq(max_vowels("aeiou", 2), 2)
}

///|
test "example 3" {
  assert_eq(max_vowels("leetcode", 3), 2)
}

///|
test "example 4" {
  assert_eq(max_vowels("rhythms", 4), 0)
}

///|
test "example 5" {
  assert_eq(max_vowels("tryhard", 4), 1)
}
