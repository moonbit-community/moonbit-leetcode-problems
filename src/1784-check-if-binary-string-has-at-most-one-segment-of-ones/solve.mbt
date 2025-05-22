fn has_at_most_one_segment_of_ones(s : String) -> Bool {
  let mut found_one = false
  let mut segment_ended = false
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] == '1' {
      if segment_ended {
        return false
      }
      found_one = true
    } else if found_one {
      segment_ended = true
    }
  }
  return true
}
