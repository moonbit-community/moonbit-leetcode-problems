fn count_homogenous_substrings(s : String) -> Int {
  let mod_value = 1_000_000_007
  let mut count = 0
  let mut i = 0
  let length = s.length()
  while i < length {
    let mut j = i
    while j < length && s[j] == s[i] {
      j = j + 1
    }
    let n = j - i
    count = (count + n * (n + 1) / 2 % mod_value) % mod_value
    i = j
  }
  count
}
