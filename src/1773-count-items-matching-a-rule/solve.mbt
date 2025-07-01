///|
fn count_items_matching_a_rule(
  items : Array[Array[String]],
  rule_key : String,
  rule_value : String
) -> Int {
  let index_to_check = match rule_key {
    "type" => 0
    "color" => 1
    "name" => 2
    _ => -1
  }
  let mut count = 0
  for item in items {
    if item[index_to_check] == rule_value {
      count = count + 1
    }
  }
  count
}
