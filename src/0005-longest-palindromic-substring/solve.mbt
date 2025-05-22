fn longest_palindromic_substring(s : String) -> String {
  let n = s.length()
  if n < 2 {
    return s
  }
  let mut start = 0
  let mut end = 0
  fn expand_around_center(s : String, left : Int, right : Int) -> Int {
    let mut l = left
    let mut r = right
    while l >= 0 && r < s.length() && s[l] == s[r] {
      l = l - 1
      r = r + 1
    }
    return r - l - 1
  }

  for i = 0; i < n; i = i + 1 {
    let len1 = expand_around_center(s, i, i)
    let len2 = expand_around_center(s, i, i + 1)
    let len = if len1 > len2 { len1 } else { len2 }
    if len > end - start {
      start = i - (len - 1) / 2
      end = i + len / 2
    }
  }
  return slice(s, start, end + 1)
}

fn slice(string : String, start : Int, stop : Int) -> String {
  let mut result = ""
  for i = start; i < stop; i = i + 1 {
    result = result + string[i].to_string()
  }
  result
}
