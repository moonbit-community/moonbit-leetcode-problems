///|
fn unique_length_3_palindromic_subsequences(s : String) -> Int {
  let n = s.length()
  let result_set : @hashmap.T[String, Bool] = @hashmap.new()
  for center = 1; center < n - 1; center = center + 1 {
    let center_char = s.code_unit_at(center).unsafe_to_char()
    let left_chars : Array[Char] = []
    let right_chars : Array[Char] = []
    for i = 0; i < center; i = i + 1 {
      if s.code_unit_at(i).to_int() == center_char.to_int() {
        left_chars.push(s.code_unit_at(i).unsafe_to_char())
      }
    }
    for i = center + 1; i < n; i = i + 1 {
      if s.code_unit_at(i).to_int() == center_char.to_int() {
        right_chars.push(s.code_unit_at(i).unsafe_to_char())
      }
    }
    for l = 0; l < left_chars.length(); l = l + 1 {
      let left = left_chars[l]
      for r = 0; r < right_chars.length(); r = r + 1 {
        let right = right_chars[r]
        if left == right {
          let palindrome = @buffer.new()
          palindrome.write_char(left)
          palindrome.write_char(center_char)
          palindrome.write_char(right)
          let palindrome = palindrome.to_string()
          result_set.set(palindrome, true)
        }
      }
    }
  }
  result_set.length()
}

// Test cases
