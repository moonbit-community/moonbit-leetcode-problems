///|
test "example 1" {
  assert_eq(is_pangram("thequickbrownfoxjumpsoverthelazydog"), true)
}

///|
test "example 2" {
  assert_eq(is_pangram("leetcode"), false)
}

///|
test "empty string" {
  assert_eq(is_pangram(""), false)
}

///|
test "all letters but repeated" {
  assert_eq(
    is_pangram("abcdefghijklmnopqrstuvwxyzzyxwvutsrqponmlkjihgfedcba"),
    true,
  )
}

///|
test "missing one letter" {
  assert_eq(is_pangram("thequickbrownfoxjumpsoverthelazydogz"), false)
}
