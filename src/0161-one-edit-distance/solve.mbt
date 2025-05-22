///|
fn is_one_edit_distance(s : String, t : String) -> Bool {
  let m = s.length()
  let n = t.length()
  if m < n {
    return is_one_edit_distance(t, s)
  }
  if m - n > 1 {
    return false
  }
  for i = 0; i < n; i = i + 1 {
    if s[i] != t[i] {
      if m == n {
        return slice(s, i + 1, m) == slice(t, i + 1, n)
      }
      return slice(s, i + 1, m) == slice(t, i, n)
    }
  }
  return m == n + 1
}

///|
fn slice(s : String, start : Int, end : Int) -> String {
  let mut result = ""
  for i = start; i < end; i = i + 1 {
    result = result + s[i].to_string()
  }
  result
}
