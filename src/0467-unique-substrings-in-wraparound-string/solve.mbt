///|
fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}

///|
fn find_substring_in_wrapround_string(p : String) -> Int {
  let dp : Array[Int] = Array::make(26, 0)
  let mut k = 0
  let mut i = 0
  while i < p.length() {
    let c = p.get(i)
    if i > 0 && (c.to_int() - p.get(i - 1).to_int() + 26) % 26 == 1 {
      k = k + 1
    } else {
      k = 1
    }
    let index = c.to_int() - 'a'.to_int()
    dp[index] = max(dp[index], k)
    i = i + 1
  }
  let mut ans = 0
  let mut v = 0
  while v < dp.length() {
    ans = ans + dp[v]
    v = v + 1
  }
  ans
}
