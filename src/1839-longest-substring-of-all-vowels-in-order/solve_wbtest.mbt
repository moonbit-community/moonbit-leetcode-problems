///|
test "example 1" {
  assert_eq!(longest_beautiful_substring("aeiaaioaaaaeiiiiouuuooaauuaeiu"), 13)
}

///|
test "example 2" {
  assert_eq!(longest_beautiful_substring("aeeeiiiioooauuuaeiou"), 5)
}

///|
test "example 3" {
  assert_eq!(longest_beautiful_substring("a"), 0)
}

///|
test "example 4" {
  assert_eq!(longest_beautiful_substring("aeiou"), 5)
}

///|
test "example 5" {
  assert_eq!(longest_beautiful_substring("uoiea"), 0)
}
