///|
test "example 1" {
  assert_eq(remove_outer_parentheses("(()())(())"), "()()()")
}

///|
test "example 2" {
  assert_eq(remove_outer_parentheses("(()())(())(()(()))"), "()()()()(())")
}

///|
test "example 3" {
  assert_eq(remove_outer_parentheses("()()"), "")
}
