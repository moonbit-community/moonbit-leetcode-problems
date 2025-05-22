///|
fn backspace_compare(s : String, t : String) -> Bool {
  let mut i : Int = s.length() - 1
  let mut j : Int = t.length() - 1
  let mut skip1 : Int = 0
  let mut skip2 : Int = 0
  while i >= 0 || j >= 0 {
    while i >= 0 {
      if s[i] == '#' {
        skip1 = skip1 + 1
        i = i - 1
      } else if skip1 > 0 {
        skip1 = skip1 - 1
        i = i - 1
      } else {
        break
      }
    }
    while j >= 0 {
      if t[j] == '#' {
        skip2 = skip2 + 1
        j = j - 1
      } else if skip2 > 0 {
        skip2 = skip2 - 1
        j = j - 1
      } else {
        break
      }
    }
    if i >= 0 && j >= 0 {
      if s[i] != t[j] {
        return false
      }
    } else if i >= 0 || j >= 0 {
      return false
    }
    i = i - 1
    j = j - 1
  }
  true
}
