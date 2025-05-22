fn is_number(s : String) -> Bool {
  let n = s.length()
  let mut i = 0
  if s.get(i) == '+' || s.get(i) == '-' {
    i = i + 1
  }
  if i == n {
    return false
  }
  if s.get(i) == '.' && (i + 1 == n || s.get(i + 1) == 'e' || s.get(i + 1) == 'E') {
    return false
  }
  let mut dot = 0
  let mut e = 0
  while i < n {
    if s.get(i) == '.' {
      if e > 0 || dot > 0 {
        return false
      }
      dot = dot + 1
    } else if s.get(i) == 'e' || s.get(i) == 'E' {
      if e > 0 || i == 0 || i == n - 1 {
        return false
      }
      e = e + 1
      if s.get(i + 1) == '+' || s.get(i + 1) == '-' {
        i = i + 1
        if i == n - 1 {
          return false
        }
      }
    } else if s.get(i) < '0' || s.get(i) > '9' {
      return false
    }
    i = i + 1
  }
  true
}
