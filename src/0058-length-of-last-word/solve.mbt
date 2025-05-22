fn length_of_last_word(s : String) -> Int {
  let s_len = s.length()
  let mut i = s_len - 1
  while i >= 0 && s[i] == ' ' {
    i = i - 1
  }
  let mut j = i
  while j >= 0 && s[j] != ' ' {
    j = j - 1
  }
  i - j
}
