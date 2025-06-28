///|
test "example 1" {
  let items = [
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"],
  ]
  let rule_key = "color"
  let rule_value = "silver"
  assert_eq(count_items_matching_a_rule(items, rule_key, rule_value), 1)
}

///|
test "example 2" {
  let items = [
    ["phone", "blue", "pixel"],
    ["computer", "silver", "phone"],
    ["phone", "gold", "iphone"],
  ]
  let rule_key = "type"
  let rule_value = "phone"
  assert_eq(count_items_matching_a_rule(items, rule_key, rule_value), 2)
}

///|
test "example with no matches" {
  let items = [
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"],
  ]
  let rule_key = "name"
  let rule_value = "tablet"
  assert_eq(count_items_matching_a_rule(items, rule_key, rule_value), 0)
}
