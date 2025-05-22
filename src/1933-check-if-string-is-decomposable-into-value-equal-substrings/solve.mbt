fn is_decomposable(s : String) -> Bool {
  let n = s.length()
  let mut i = 0
  let mut found_length_2 = false
  while i < n {
    let start = i
    while i < n && s[i] == s[start] {
      i = i + 1
    }
    let length = i - start
    if length == 2 {
      if found_length_2 {
        return false
      }
      found_length_2 = true
    } else if length != 3 {
      return false
    }
  }
  return found_length_2
}
