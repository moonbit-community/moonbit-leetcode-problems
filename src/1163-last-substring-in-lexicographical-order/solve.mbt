///|
fn slice(string : String, start : Int) -> String {
  let mut result = ""
  let n = string.length()
  for i = start; i < n; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}

///|
fn last_substring(s : String) -> String {
  let n = s.length()
  let mut i = 0
  let mut j = 1
  let mut k = 0
  while j + k < n {
    if s[i + k] == s[j + k] {
      k = k + 1
    } else if s[i + k] < s[j + k] {
      i = i + k + 1
      k = 0
      if i >= j {
        j = i + 1
      }
    } else {
      j = j + k + 1
      k = 0
    }
  }
  slice(s, i)
}

// Test cases
