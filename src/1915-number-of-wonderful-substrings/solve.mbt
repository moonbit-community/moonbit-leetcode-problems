///|
fn count_wonderful_substrings(word : String) -> Int {
  let count_map : @hashmap.T[Int, Int] = @hashmap.new()
  count_map.set(0, 1)
  let mut mask = 0
  let mut result = 0
  for i = 0; i < word.length(); i = i + 1 {
    let char_index = word[i].to_int() - 'a'.to_int()
    mask = mask ^ (1 << char_index)

    // Check for all even counts
    if count_map.contains(mask) {
      result = result + count_map.get(mask).unwrap()
    }

    // Check for exactly one odd count
    for j = 0; j < 10; j = j + 1 {
      let single_odd_mask = mask ^ (1 << j)
      if count_map.contains(single_odd_mask) {
        result = result + count_map.get(single_odd_mask).unwrap()
      }
    }

    // Update the count map
    let current_count = count_map.get_or_default(mask, 0)
    count_map.set(mask, current_count + 1)
  }
  result
}

// Test cases
