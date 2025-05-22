///|
test "example 1" {
  assert_eq!(is_valid("()"), true)
}

///|
test "example 2" {
  assert_eq!(is_valid("()[]{}"), true)
}

///|
test "example 3" {
  assert_eq!(is_valid("(]"), false)
}

///|
test "example 4" {
  assert_eq!(is_valid("([)]"), false)
}

///|
test "example 5" {
  assert_eq!(is_valid("{[]}"), true)
}
