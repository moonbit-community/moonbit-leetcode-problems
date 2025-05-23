///|
fn roman_to_int(s : String) -> Int {
  let roman_map : Map[Char, Int] = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  }
  let mut total = 0
  let mut i = 0
  let s_len = s.length()
  while i < s_len {
    let current_value = roman_map.get_or_default(s[i], 0)
    let next_value = if i + 1 < s_len {
      roman_map.get_or_default(s[i + 1], 0)
    } else {
      0
    }
    if current_value < next_value {
      total = total + (next_value - current_value)
      i = i + 2
    } else {
      total = total + current_value
      i = i + 1
    }
  }
  total
}
