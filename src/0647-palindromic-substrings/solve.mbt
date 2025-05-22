///|
fn count_substrings(s : String) -> Int {
  let mut t : String = "^#"
  for i = 0; i < s.length(); i = i + 1 {
    t = t + s[i].to_string() + "#"
  }
  t = t + "$"
  let n : Int = t.length()
  let p : Array[Int] = Array::make(n, 0)
  let mut pos : Int = 0
  let mut maxRight : Int = 0
  let mut ans : Int = 0
  for i = 1; i < n - 1; i = i + 1 {
    p[i] = if maxRight > i { min(maxRight - i, p[2 * pos - i]) } else { 1 }
    while t[i - p[i]] == t[i + p[i]] && i - p[i] >= 0 && i + p[i] < n {
      p[i] = p[i] + 1
    }
    if i + p[i] > maxRight {
      maxRight = i + p[i]
      pos = i
    }
    ans = ans + p[i] / 2
  }
  ans
}

///|
fn min(a : Int, b : Int) -> Int {
  if a < b {
    a
  } else {
    b
  }
}
