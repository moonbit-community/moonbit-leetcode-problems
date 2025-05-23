///|
fn longest_palindrome(s : String) -> String {
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
    let len = @math.maximum(len1, len2)
    if len > end - start {
      start = i - (len - 1) / 2
      end = i + len / 2
    }
  }
  return s.view(start_offset=start, end_offset=end + 1).to_string()
}
