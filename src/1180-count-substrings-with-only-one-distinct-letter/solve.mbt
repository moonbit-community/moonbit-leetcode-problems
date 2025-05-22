fn count_letters(s : String) -> Int {
  let mut ans = 0
  let n = s.length()
  let mut i = 0
  while i < n {
    let mut j = i
    let mut cnt = 0
    while j < n && s[j] == s[i] {
      j = j + 1
      cnt = cnt + 1
      ans = ans + cnt
    }
    i = j
  }
  ans
}
