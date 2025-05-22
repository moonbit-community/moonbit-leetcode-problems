fn remove_palindrome_sub(s : String) -> Int {
  let mut i = 0
  let mut j = s.length() - 1
  while i < j {
    if s[i] != s[j] {
      return 2
    }
    i = i + 1
    j = j - 1
  }
  1
}
