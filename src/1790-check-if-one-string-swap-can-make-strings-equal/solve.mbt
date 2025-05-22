fn can_make_equal_with_one_swap(s1 : String, s2 : String) -> Bool {
  let len = s1.length()
  if len != s2.length() {
    return false
  }
  let mismatches = Array::new()
  for i = 0; i < len; i = i + 1 {
    if s1[i] != s2[i] {
      mismatches.push((s1[i], s2[i]))
    }
  }
  let mismatch_count = mismatches.length()
  if mismatch_count == 0 {
    return true
  } else if mismatch_count == 2 {
    let (a1, b1) = mismatches[0]
    let (a2, b2) = mismatches[1]
    return a1 == b2 && a2 == b1
  } else {
    return false
  }
}
