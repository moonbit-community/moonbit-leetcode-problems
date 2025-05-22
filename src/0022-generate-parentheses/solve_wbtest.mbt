test "example 1" {
  assert_eq!(
    generate_parentheses(3) |> sort,
    ["((()))", "(()())", "(())()", "()(())", "()()()"],
  )
}

test "example 2" {
  assert_eq!(generate_parentheses(1) |> sort, ["()"])
}

test "example 3" {
  assert_eq!(generate_parentheses(2) |> sort, ["(())", "()()"])
}
