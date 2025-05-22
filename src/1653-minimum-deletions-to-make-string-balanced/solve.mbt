fn minimum_deletions(s : String) -> Int {
  let n = s.length()
  let f = Array::make(n + 1, 0)
  let mut b = 0
  for i = 1; i <= n; i = i + 1 {
    if s[i - 1] == 'b' {
      f[i] = f[i - 1]
      b = b + 1
    } else {
      f[i] = min(f[i - 1] + 1, b)
    }
  }
  f[n]
}

fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
