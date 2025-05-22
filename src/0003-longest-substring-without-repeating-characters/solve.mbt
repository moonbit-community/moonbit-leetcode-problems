///|
fn length_of_longest_substring(s : String) -> Int {
  let mut max_length = 0
  let mut start = 0
  let char_index_map : @hashmap.T[Char, Int] = @hashmap.new()
  for i = 0; i < s.length(); i = i + 1 {
    let current_char = s[i]
    if char_index_map.contains(current_char) {
      let last_seen_index = char_index_map.get(current_char).unwrap()
      if last_seen_index >= start {
        start = last_seen_index + 1
      }
    }
    char_index_map.set(current_char, i)
    let current_length = i - start + 1
    if current_length > max_length {
      max_length = current_length
    }
  }
  max_length
}
