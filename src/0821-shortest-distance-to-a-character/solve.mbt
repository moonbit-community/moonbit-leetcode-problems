///|
fn shortest_char(s : String, c : Char) -> Array[Int] {
  let inf = 2_0000_0000
  let n : Int = s.length()
  let ans : Array[Int] = Array::make(n, inf) // equivalent to `inf`
  let inf : Int = inf
  let mut pre : Int = -inf
  for i = 0; i < n; i = i + 1 {
    if s[i] == c {
      pre = i
    }
    ans[i] = min(ans[i], i - pre)
  }
  let mut suf : Int = inf
  for i = n - 1; i >= 0; i = i - 1 {
    if s[i] == c {
      suf = i
    }
    ans[i] = min(ans[i], suf - i)
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
