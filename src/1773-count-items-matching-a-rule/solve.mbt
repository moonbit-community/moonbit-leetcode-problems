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
  for i = 0; i < items.length(); i = i + 1 {
    if items[i][index_to_check] == rule_value {
      count = count + 1
    }
  }
  count
}
