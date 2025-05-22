test "example 1" {
  assert_eq!(remove_invalid_parentheses("(()())").s, "(()())")
}

test "example 2" {
  assert_eq!(remove_invalid_parentheses("(a)())()").s, "(a)()()")
}
