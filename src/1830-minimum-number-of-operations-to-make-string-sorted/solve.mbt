///|
fn min_number_of_operations_to_make_string_sorted(s : String) -> Int {
  let mod_value = 1_000_000_007
  let mut operations = 0
  let s_array = Array::make(s.length(), ' ')
  for i = 0; i < s.length(); i = i + 1 {
    s_array[i] = s[i]
  }
  while true {
    let mut i = -1
    for j = 1; j < s_array.length(); j = j + 1 {
      if s_array[j] < s_array[j - 1] {
        i = j
      }
    }
    if i == -1 {
      break
    }
    let mut j = i
    for k = i; k < s_array.length(); k = k + 1 {
      if s_array[k] < s_array[i - 1] {
        j = k
      }
    }

    // Swap s_array[i - 1] and s_array[j]
    let temp = s_array[i - 1]
    s_array[i - 1] = s_array[j]
    s_array[j] = temp

    // Reverse the suffix starting at index i
    let mut left = i
    let mut right = s_array.length() - 1
    while left < right {
      let temp = s_array[left]
      s_array[left] = s_array[right]
      s_array[right] = temp
      left = left + 1
      right = right - 1
    }
    operations = (operations + 1) % mod_value
  }
  operations
}
