fn is_palindrome(s : String) -> Bool {
  let len = s.length()
  for i = 0; i < len / 2; i = i + 1 {
    if s[i] != s[len - 1 - i] {
      return false
    }
  }
  return true
}

fn can_split_into_three_palindromes(s : String) -> Bool {
  let len = s.length()
  for i = 1; i < len - 1; i = i + 1 {
    for j = i + 1; j < len; j = j + 1 {
      let s1 = slice(s, 0, i)
      let s2 = slice(s, i, j)
      let s3 = slice(s, j, len)
      if is_palindrome(s1) && is_palindrome(s2) && is_palindrome(s3) {
        return true
      }
    }
  }
  return false
}

fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}
