///|
test "example 1" {
  assert_eq!(is_valid("aabcbc"), true)
}

///|
test "example 2" {
  assert_eq!(is_valid("abcabcababcc"), true)
}

///|
test "example 3" {
  assert_eq!(is_valid("abccba"), false)
}

///|
test "example 4" {
  assert_eq!(is_valid("cababc"), false)
}
