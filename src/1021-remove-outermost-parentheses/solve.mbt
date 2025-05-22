///|
fn remove_outer_parentheses(s : String) -> String {
  let mut res = ""
  let mut depth = 0
  let s_len = s.length()
  for i = 0; i < s_len; i = i + 1 {
    let c = s[i]
    if c == '(' {
      depth = depth + 1
    }
    if depth != 1 {
      res = res + c.to_string()
    }
    if c == ')' {
      depth = depth - 1
    }
  }
  res
}
