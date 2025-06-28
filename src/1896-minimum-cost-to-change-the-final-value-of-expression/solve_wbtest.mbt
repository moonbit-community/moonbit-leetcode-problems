///|
test "example 1" {
  let expression = "1&(0|1)"
  assert_eq(min_cost_to_change_final_value(expression), 1)
}

///|
test "example 2" {
  let expression = "(0&0)&(0&0&0)"
  assert_eq(min_cost_to_change_final_value(expression), 3)
}

///|
test "example 3" {
  let expression = "(0|(1|0&1))"
  assert_eq(min_cost_to_change_final_value(expression), 1)
}
