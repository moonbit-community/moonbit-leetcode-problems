///|
fn evaluate_bracket_pairs(
  s : String,
  knowledge : Array[Array[String]]
) -> String {
  let knowledge_map : @hashmap.T[String, String] = @hashmap.new()

  // Populate the knowledge map
  for i = 0; i < knowledge.length(); i = i + 1 {
    let key = knowledge[i][0]
    let value = knowledge[i][1]
    knowledge_map.set(key, value)
  }
  let mut result = ""
  let mut current_key = ""
  let mut in_bracket = false
  for i = 0; i < s.length(); i = i + 1 {
    let char = s[i]
    if char == '(' {
      in_bracket = true
      current_key = ""
    } else if char == ')' {
      in_bracket = false
      if knowledge_map.contains(current_key) {
        result = result + knowledge_map.get(current_key).or("")
      } else {
        result = result + "?"
      }
      current_key = ""
    } else if in_bracket {
      current_key = current_key + char.to_string()
    } else {
      result = result + char.to_string()
    }
  }
  result
}
