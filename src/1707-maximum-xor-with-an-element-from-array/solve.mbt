fn can_transform(s : String, t : String) -> Bool {
  let mut i = 0
  let mut j = 0
  while i < s.length() && j < t.length() {
    if s[i] == t[j] {
      i = i + 1
      j = j + 1
    } else {
      i = i + 1
    }
  }
  return j == t.length()
}
