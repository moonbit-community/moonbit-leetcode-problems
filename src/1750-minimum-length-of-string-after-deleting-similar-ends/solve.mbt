///|
fn min_length_after_deleting_similar_ends(s : String) -> Int {
  let mut left = 0
  let mut right = s.length() - 1
  while left < right && s[left] == s[right] {
    let char_to_match = s[left]
    while left < right && s[left] == char_to_match {
      left = left + 1
    }
    while left <= right && s[right] == char_to_match {
      right = right - 1
    }
  }
  right - left + 1
}
