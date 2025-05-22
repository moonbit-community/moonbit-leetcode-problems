///|
test "example 1" {
  assert_eq!(generate_parenthesis(3) |> sort, [
    "((()))", "(()())", "(())()", "()(())", "()()()",
  ])
}

///|
test "example 2" {
  assert_eq!(generate_parenthesis(1) |> sort, ["()"])
}

///|
test "example 3" {
  assert_eq!(generate_parenthesis(2) |> sort, ["(())", "()()"])
}
