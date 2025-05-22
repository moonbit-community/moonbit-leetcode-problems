///|
fn num_decodings(s : String) -> Int {
  let n = s.length()
  let f = Array::make(n + 1, 0)
  f[0] = 1
  for i = 1; i <= n; i = i + 1 {
    if s[i - 1] != '0' {
      f[i] += f[i - 1]
    }
    if i > 1 &&
      s[i - 2] != '0' &&
      (s[i - 2].to_int() - '0'.to_int()) * 10 +
      (s[i - 1].to_int() - '0'.to_int()) <=
      26 {
      f[i] += f[i - 2]
    }
  }
  f[n]
}
