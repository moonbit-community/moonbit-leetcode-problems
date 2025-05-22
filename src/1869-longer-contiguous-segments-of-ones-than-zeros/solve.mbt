fn longer_contiguous_segments_of_ones_than_zeros(s : String) -> Bool {
  let mut max_ones = 0
  let mut max_zeros = 0
  let mut current_ones = 0
  let mut current_zeros = 0
  for i = 0; i < s.length(); i = i + 1 {
    if s[i] == '1' {
      current_ones = current_ones + 1
      current_zeros = 0
      if current_ones > max_ones {
        max_ones = current_ones
      }
    } else {
      current_zeros = current_zeros + 1
      current_ones = 0
      if current_zeros > max_zeros {
        max_zeros = current_zeros
      }
    }
  }
  return max_ones > max_zeros
}
