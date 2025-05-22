fn substring(s : String, start : Int, end : Int) -> String {
  let mut result : String = ""
  let mut i : Int = start
  while i < end {
    result = result + s.get(i).to_string()
    i = i + 1
  }
  result
}

fn contains(big : String, small : String) -> Bool {
  let big_len : Int = big.length()
  let small_len : Int = small.length()
  if small_len > big_len {
    return false
  }
  let mut i : Int = 0
  while i <= big_len - small_len {
    if substring(big, i, i + small_len) == small {
      return true
    }
    i = i + 1
  }
  false
}

fn repeated_substring_pattern(s : String) -> Bool {
  let str : String = s + s
  contains(substring(str, 1, str.length() - 1), s)
}
