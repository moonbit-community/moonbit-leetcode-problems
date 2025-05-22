fn is_subsequence(s : String, t : String) -> Bool {
  let m : Int = s.length()
  let n : Int = t.length()
  let mut result : Int = 0
  for i = 0, j = 0; i < m && j < n; j = j + 1 {
    if s.get(i) == t.get(j) {
      result = result + 1
      continue i + 1, j
    }
  }
  return result == m
}
