///|
fn max_power(s : String) -> Int {
  let mut ans = 1
  let mut t = 1
  for i = 1; i < s.length(); i = i + 1 {
    if s[i] == s[i - 1] {
      t = t + 1
      ans = max(ans, t)
    } else {
      t = 1
    }
  }
  ans
}

///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
