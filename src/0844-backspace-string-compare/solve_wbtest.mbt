test "example 1" {
  assert_eq!(backspace_compare("ab#c", "ad#c"), true)
}

test "example 2" {
  assert_eq!(backspace_compare("ab##", "c#d#"), true)
}

test "example 3" {
  assert_eq!(backspace_compare("a#c", "b"), false)
}
