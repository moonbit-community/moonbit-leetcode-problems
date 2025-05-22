///|
fn sum_of_beauty_of_all_substrings(s : String) -> Int {
  let n = s.length()
  let mut sum_of_beauty = 0
  for i = 0; i < n; i = i + 1 {
    let freq_map = @hashmap.new()
    let mut max_freq = 0
    let mut min_freq = n
    for j = i; j < n; j = j + 1 {
      let char = s[j]
      let count = freq_map.get_or_default(char, 0) + 1
      freq_map.set(char, count)
      if count > max_freq {
        max_freq = count
      }
      if count < min_freq {
        min_freq = count
      }
      sum_of_beauty += max_freq - min_freq
    }
  }
  sum_of_beauty
}
