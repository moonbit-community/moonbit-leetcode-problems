///|
test "example 1" {
  assert_eq!(length_of_last_word("Hello World"), 5)
}

///|
test "example 2" {
  assert_eq!(length_of_last_word("   fly me   to   the moon  "), 4)
}

///|
test "example 3" {
  assert_eq!(length_of_last_word("luffy is still joyboy"), 6)
}
