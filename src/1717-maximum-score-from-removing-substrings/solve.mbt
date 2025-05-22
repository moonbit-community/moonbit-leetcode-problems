///|
fn max_score_from_removing_substrings(s : String, x : Int, y : Int) -> Int {
  let mut score = 0
  let stack = Array::new()
  let (high_value, low_value, high_char, low_char) = if x > y {
    (x, y, 'a', 'b')
  } else {
    (y, x, 'b', 'a')
  }
  for i = 0; i < s.length(); i = i + 1 {
    let current_char = s[i]
    if stack.length() > 0 &&
      stack[stack.length() - 1] == low_char &&
      current_char == high_char {
      stack.pop() |> ignore
      score = score + high_value
    } else {
      stack.push(current_char)
    }
  }
  let temp_stack = Array::new()
  for i = 0; i < stack.length(); i = i + 1 {
    let current_char = stack[i]
    if temp_stack.length() > 0 &&
      temp_stack[temp_stack.length() - 1] == high_char &&
      current_char == low_char {
      temp_stack.pop() |> ignore
      score = score + low_value
    } else {
      temp_stack.push(current_char)
    }
  }
  score
}
