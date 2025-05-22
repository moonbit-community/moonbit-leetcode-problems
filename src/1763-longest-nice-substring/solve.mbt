///|
fn char_to_uppercase(c : Char) -> Char {
  let ascii_val = c.to_int()
  if ascii_val >= 97 && ascii_val <= 122 {
    return Char::from_int(ascii_val - 32)
  }
  c
}

///|
fn char_to_lowercase(c : Char) -> Char {
  let ascii_val = c.to_int()
  if ascii_val >= 65 && ascii_val <= 90 {
    return Char::from_int(ascii_val + 32)
  }
  c
}

///|
fn is_nice_substring(substring : String) -> Bool {
  let char_set : @hashmap.T[Char, Bool] = @hashmap.new()
  for i = 0; i < substring.length(); i = i + 1 {
    char_set.set(substring[i], true)
  }
  for i = 0; i < substring.length(); i = i + 1 {
    let char = substring[i]
    let upper_char = char_to_uppercase(char)
    let lower_char = char_to_lowercase(char)
    if char_set.contains(upper_char) && not(char_set.contains(lower_char)) {
      return false
    }
    if char_set.contains(lower_char) && not(char_set.contains(upper_char)) {
      return false
    }
  }
  true
}

///|
fn longest_nice_substring(s : String) -> String {
  let mut longest = ""
  let s_len = s.length()
  for i = 0; i < s_len; i = i + 1 {
    for j = i + 1; j <= s_len; j = j + 1 {
      let substring = s.substring(start=i, end=j)
      if is_nice_substring(substring) && substring.length() > longest.length() {
        longest = substring
      }
    }
  }
  longest
}
