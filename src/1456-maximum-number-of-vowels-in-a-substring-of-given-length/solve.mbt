fn is_vowel(c : Char) -> Bool {
  c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'
}

fn max_vowels(s : String, k : Int) -> Int {
  let mut t = 0
  for i = 0; i < k; i = i + 1 {
    if is_vowel(s[i]) {
      t = t + 1
    }
  }
  let mut ans = t
  let s_len = s.length()
  for i = k; i < s_len; i = i + 1 {
    if is_vowel(s[i]) {
      t = t + 1
    }
    if is_vowel(s[i - k]) {
      t = t - 1
    }
    ans = max(ans, t)
  }
  ans
}

fn max(a : Int, b : Int) -> Int {
  if a >= b {
    a
  } else {
    b
  }
}
