test "example 1" {
  assert_eq!(longest_valid_parentheses("(()"), 2)
}

test "example 2" {
  assert_eq!(longest_valid_parentheses(")()())"), 4)
}

test "example 3" {
  assert_eq!(longest_valid_parentheses(""), 0)
}

// Additional Tests

test "all open parentheses" {
  assert_eq!(longest_valid_parentheses("(((((("), 0)
}

test "all closed parentheses" {
  assert_eq!(longest_valid_parentheses(")))))"), 0)
}

test "valid surrounded by invalid" {
  assert_eq!(longest_valid_parentheses(")()()("), 4)
}
